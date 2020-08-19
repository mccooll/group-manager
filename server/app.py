from flask import Flask, jsonify
from flaskext.mysql import MySQL
import os
from pprint import pprint
app = Flask(__name__)
app.config.update(
	MYSQL_DATABASE_HOST=os.getenv('MYSQL_DATABASE_HOST'),
	MYSQL_DATABASE_USER=os.getenv('MYSQL_DATABASE_USER'),
	MYSQL_DATABASE_PASSWORD=os.getenv('MYSQL_DATABASE_PASSWORD'),
	MYSQL_DATABASE_DB=os.getenv('MYSQL_DATABASE_DB')
)
mysql = MySQL()
mysql.init_app(app)

@app.route('/size')
def size():
    return getQuery('''
		SELECT `when`, CAST(
			SUM(IF(isJoin,1,-1)) OVER ( ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)
		AS SIGNED) AS size
		FROM Membership WHERE groupId=1 ORDER BY `when` DESC, `isJoin` ASC LIMIT 10;
''')

@app.route('/members')
def members():
	return getQuery("SELECT id, name FROM Member")

@app.route('/groups')
def groups():
	return getQuery("SELECT id, name FROM `Group`")

@app.route('/group-members')
def groupMembers():
	return getQuery('''
		SELECT groupId, memberId
		FROM Membership Group BY groupId, memberId
		HAVING SUM(IF(isJoin,1,-1)) > 0
	''')

def getQuery(query):
	cursor = mysql.get_db().cursor()
	res = cursor.execute(query)
	res2 = cursor.fetchall()
	res3 = dictFormat(res2,cursor.description)
	return jsonify(res3)

def dictFormat(data,columns):
	return [{columns[index][0]:column for index, column in enumerate(value)} for value in data]


