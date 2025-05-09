

from database import connection


def select(db_config, _sql):
    with connection.DBContextManager(db_config) as cursor:
        if cursor:
            cursor.execute(_sql)
            schema = [column[0] for column in cursor.description]
            result = [dict(zip(schema, row)) for row in cursor.fetchall()]
            return result
        else:
            raise ValueError("ERROR. CURSOR NOT CREATED!")
def call_proc(db_config: dict, proc_name: str, *args):
    with connection.DBContextManager(db_config) as cursor:
        if cursor is None:
            raise ValueError("ERROR. CURSOR NOT CREATED!")
        param_list = args
        res = cursor.callproc(proc_name, param_list)
        print(res)
        if res:
            return 1
        else:
            return 0