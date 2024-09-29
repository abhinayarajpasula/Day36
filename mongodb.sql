Create Collections and Insert Documents:

Users Collection:

sql: db.createCollection("users")
output: { ok: 1 }

sql: db.users.insertMany([
    { name: "Abhinaya", email: "abhinaya@example.com", codekata_problems_solved: 50, tasks_submitted: [], attendance: [{ date: ISODate("2020-10-16"), status: "absent" }] },
    { name: "Ram", email: "ram@example.com", codekata_problems_solved: 100, tasks_submitted: [], attendance: [{ date: ISODate("2020-10-16"), status: "present" }] },
    { name: "Surya", email: "surya@example.com", codekata_problems_solved: 150, tasks_submitted: [], attendance: [{ date: ISODate("2020-10-16"), status: "present" }] },
    { name: "Sri", email: "sri@example.com", codekata_problems_solved: 200, tasks_submitted: [], attendance: [{ date: ISODate("2020-10-16"), status: "present" }] },
    { name: "Siva", email: "siva@example.com", codekata_problems_solved: 250, tasks_submitted: [], attendance: [{ date: ISODate("2020-10-16"), status: "present" }] },
])

output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('66881727d4847824dd31db28'),
    '1': ObjectId('66881727d4847824dd31db29'),
    '2': ObjectId('66881727d4847824dd31db2a'),
    '3': ObjectId('66881727d4847824dd31db2b'),
    '4': ObjectId('66881727d4847824dd31db2c')
  }
}


Codekata Collection:

sql: db.createCollection("codekata")
output: { ok: 1 }

sql: db.codekata.insertMany([
    db.codekata.insertMany([
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5f9"), problems_solved: 10, date: ISODate("2020-10-10") },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fa"), problems_solved: 20, date: ISODate("2020-10-11") },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fb"), problems_solved: 30, date: ISODate("2020-10-12") },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fc"), problems_solved: 40, date: ISODate("2020-10-13") },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fd"), problems_solved: 50, date: ISODate("2020-10-14") },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fe"), problems_solved: 60, date: ISODate("2020-10-15") }
])
])

output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('66881b82d4847824dd31db33'),
    '1': ObjectId('66881b82d4847824dd31db34'),
    '2': ObjectId('66881b82d4847824dd31db35'),
    '3': ObjectId('66881b82d4847824dd31db36'),
    '4': ObjectId('66881b82d4847824dd31db37'),
    '5': ObjectId('66881b82d4847824dd31db38')
  }
}

Attendance Collection:

sql: db.createCollection("attendance")
output: { ok: 1 }

sql: db.attendance.insertMany([
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5f9"), date: ISODate("2020-10-16"), status: "absent" },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fa"), date: ISODate("2020-10-17"), status: "present" },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fb"), date: ISODate("2020-10-18"), status: "present" },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fc"), date: ISODate("2020-10-19"), status: "present" },
    { user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fd"), date: ISODate("2020-10-20"), status: "present" }
])

output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('66881b82d4847824dd31db39'),
    '1': ObjectId('66881b82d4847824dd31db3a'),
    '2': ObjectId('66881b82d4847824dd31db3b'),
    '3': ObjectId('66881b82d4847824dd31db3c'),
    '4': ObjectId('66881b82d4847824dd31db3d')
  }
}


Topics Collection::

sql: db.createCollection("topics")
output: { ok: 1 }

sql: db.topics.insertMany([
    { topic_name: "C++", date: ISODate("2020-10-16") },
    { topic_name: "Java", date: ISODate("2020-10-16") },
    { topic_name: "Python", date: ISODate("2020-10-16") },
    { topic_name: "Javascript", date: ISODate("2020-10-16") },
    { topic_name: "HTML", date: ISODate("2020-10-16") },
    { topic_name: "CSS", date: ISODate("2020-10-16") },
])

output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('66881f59d4847824dd31db43'),
    '1': ObjectId('66881f59d4847824dd31db44'),
    '2': ObjectId('66881f59d4847824dd31db45'),
    '3': ObjectId('66881f59d4847824dd31db46'),
    '4': ObjectId('66881f59d4847824dd31db47'),
    '5': ObjectId('66881f59d4847824dd31db48')
  }
}

Tasks Collection:

sql: db.createCollection("tasks")
output: { ok: 1 }

sql: db.tasks.insertMany([
    { task_name: "C++", user_id: ObjectId("60b8d295f1d3c9a2d5a2b5f9"), date: ISODate("2020-10-16") },
    { task_name: "Java", user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fa"), date: ISODate("2020-10-16") },
    { task_name: "Python", user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fb"), date: ISODate("2020-10-16") },
    { task_name: "Javascript", user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fc"), date: ISODate("2020-10-16") },
    { task_name: "HTML", user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fd"), date: ISODate("2020-10-16") },
    { task_name: "CSS", user_id: ObjectId("60b8d295f1d3c9a2d5a2b5fe"), date: ISODate("2020-10-16") },
])

output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('66881fbcd4847824dd31db49'),
    '1': ObjectId('66881fbcd4847824dd31db4a'),
    '2': ObjectId('66881fbcd4847824dd31db4b'),
    '3': ObjectId('66881fbcd4847824dd31db4c'),
    '4': ObjectId('66881fbcd4847824dd31db4d'),
    '5': ObjectId('66881fbcd4847824dd31db4e')
  }
}

CompanyDrives Collection:

sql: db.createCollection("companydrives")
output: { ok: 1 }

sql: db.companydrives.insertMany([
     { company_name: "Google", date: ISODate("2020-10-20"), students_appeared: [ObjectId("60b8d295f1d3c9a2d5a2b5f9")] },
     { company_name: "Microsoft", date: ISODate("2020-10-20"), students_appeared: [ObjectId("60b8d295f1d3c9a2d5a2b5fa")] },
     { company_name: "Amazon", date: ISODate("2020-10-20"), students_appeared: [ObjectId("60b8d295f1d3c9a2d5a2b5fb")] },
     { company_name: "Facebook", date: ISODate("2020-10-20"), students_appeared: [ObjectId("60b8d295f1d3c9a2d5a2b5fc")] },
     { company_name: "Infosys", date: ISODate("2020-10-20"), students_appeared: [ObjectId("60b8d295f1d3c9a2d5a2b5fd")] },
     { company_name: "TCS", date: ISODate("2020-10-20"), students_appeared: [ObjectId("60b8d295f1d3c9a2d5a2b5fe")] }
 ])


output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('66882126d4847824dd31db55'),
    '1': ObjectId('66882126d4847824dd31db56'),
    '2': ObjectId('66882126d4847824dd31db57'),
    '3': ObjectId('66882126d4847824dd31db58'),
    '4': ObjectId('66882126d4847824dd31db59'),
    '5': ObjectId('66882126d4847824dd31db5a')
  }
}


Mentors Collection:

sql: db.createCollection("mentors")
output: { ok: 1 }

sql: db.mentors.insertMany([
    { name: "John Doe", mentees: [ObjectId("60b8d295f1d3c9a2d5a2b5f9")] },
    { name: "Jane Doe", mentees: [ObjectId("60b8d295f1d3c9a2d5a2b5fa")] },
    { name: "Jack Doe", mentees: [ObjectId("60b8d295f1d3c9a2d5a2b5fb")] },
    { name: "Jill Doe", mentees: [ObjectId("60b8d295f1d3c9a2d5a2b5fc")] },
    { name: "Jenny Doe", mentees: [ObjectId("60b8d295f1d3c9a2d5a2b5fd")] },
    { name: "Jen Doe", mentees: [ObjectId("60b8d295f1d3c9a2d5a2b5fe")] }
])


output:
{
  acknowledged: true,
  insertedIds: {
    '0': ObjectId('668821c6d4847824dd31db5b'),
    '1': ObjectId('668821c6d4847824dd31db5c'),
    '2': ObjectId('668821c6d4847824dd31db5d'),
    '3': ObjectId('668821c6d4847824dd31db5e'),
    '4': ObjectId('668821c6d4847824dd31db5f'),
    '5': ObjectId('668821c6d4847824dd31db60')
  }
}
