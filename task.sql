1) Find all the topics and tasks which are taught in the month of October

Mongodb query:

    db.topics.find({
        date: {
            $gte: ISODate("2020-10-01"),
            $lt: ISODate("2020-11-01")
        }
    })


output:
        [
        {
            _id: ObjectId('66881f59d4847824dd31db43'),
            topic_name: 'C++',
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881f59d4847824dd31db44'),
            topic_name: 'Java',
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881f59d4847824dd31db45'),
            topic_name: 'Python',
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881f59d4847824dd31db46'),
            topic_name: 'Javascript',
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881f59d4847824dd31db47'),
            topic_name: 'HTML',
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881f59d4847824dd31db48'),
            topic_name: 'CSS',
            date: ISODate('2020-10-16T00:00:00.000Z')
        }
        ]


Mongodb query:

    db.tasks.find({
    date: {
        $gte: ISODate("2020-10-01T00:00:00Z"),
        $lt: ISODate("2020-11-01T00:00:00Z")
    }
    }).pretty()


output:    
    [
        {
            _id: ObjectId('66881fbcd4847824dd31db49'),
            task_name: 'C++',
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5f9'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881fbcd4847824dd31db4a'),
            task_name: 'Java',
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fa'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881fbcd4847824dd31db4b'),
            task_name: 'Python',
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fb'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881fbcd4847824dd31db4c'),
            task_name: 'Javascript',
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fc'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881fbcd4847824dd31db4d'),
            task_name: 'HTML',
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fd'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66881fbcd4847824dd31db4e'),
            task_name: 'CSS',
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fe'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        }
    ]

2) Find all the company drives which appeared between 15 oct-2020 and 31-oct-2020

Mongodb query:

    db.companydrives.find({
    date: {
        $gte: ISODate("2020-10-15T00:00:00Z"),
        $lt: ISODate("2020-11-01T00:00:00Z")
    }
    }).pretty()

output:
    [
        {
            _id: ObjectId('66882002d4847824dd31db4f'),
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5f9'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66882002d4847824dd31db50'),
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fa'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66882002d4847824dd31db51'),
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fb'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66882002d4847824dd31db52'),
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fc'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66882002d4847824dd31db53'),
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fd'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66882002d4847824dd31db54'),
            user_id: ObjectId('60b8d295f1d3c9a2d5a2b5fe'),
            date: ISODate('2020-10-16T00:00:00.000Z')
        },
        {
            _id: ObjectId('66882126d4847824dd31db55'),
            company_name: 'Google',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students_appeared: [ ObjectId('60b8d295f1d3c9a2d5a2b5f9') ]
        },
        {
            _id: ObjectId('66882126d4847824dd31db56'),
            company_name: 'Microsoft',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students_appeared: [ ObjectId('60b8d295f1d3c9a2d5a2b5fa') ]
        },
        {
            _id: ObjectId('66882126d4847824dd31db57'),
            company_name: 'Amazon',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students_appeared: [ ObjectId('60b8d295f1d3c9a2d5a2b5fb') ]
        },
        {
            _id: ObjectId('66882126d4847824dd31db58'),
            company_name: 'Facebook',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students_appeared: [ ObjectId('60b8d295f1d3c9a2d5a2b5fc') ]
        },
        {
            _id: ObjectId('66882126d4847824dd31db59'),
            company_name: 'Infosys',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students_appeared: [ ObjectId('60b8d295f1d3c9a2d5a2b5fd') ]
        },
        {
            _id: ObjectId('66882126d4847824dd31db5a'),
            company_name: 'TCS',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students_appeared: [ ObjectId('60b8d295f1d3c9a2d5a2b5fe') ]
        }
    ]


3) Find all the company drives and students who are appeared for the placement.

Mongodb query:
    db.companydrives.aggregate([
        {
            $lookup: {
            from: "users",
            localField: "students_appeared",
            foreignField: "_id",
            as: "students"
            }
        },
        {
            $project: {
            company_name: 1,
            date: 1,
            "students.name": 1,
            "students.email": 1
            }
        }
    ]).pretty()

output:
    [
        {
            _id: ObjectId('66882002d4847824dd31db4f'),
            date: ISODate('2020-10-16T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882002d4847824dd31db50'),
            date: ISODate('2020-10-16T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882002d4847824dd31db51'),
            date: ISODate('2020-10-16T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882002d4847824dd31db52'),
            date: ISODate('2020-10-16T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882002d4847824dd31db53'),
            date: ISODate('2020-10-16T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882002d4847824dd31db54'),
            date: ISODate('2020-10-16T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882126d4847824dd31db55'),
            company_name: 'Google',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882126d4847824dd31db56'),
            company_name: 'Microsoft',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882126d4847824dd31db57'),
            company_name: 'Amazon',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882126d4847824dd31db58'),
            company_name: 'Facebook',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882126d4847824dd31db59'),
            company_name: 'Infosys',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students: []
        },
        {
            _id: ObjectId('66882126d4847824dd31db5a'),
            company_name: 'TCS',
            date: ISODate('2020-10-20T00:00:00.000Z'),
            students: []
        }
    ]


4) Find the number of problems solved by the user in codekata

Mongodb query:
    db.codekata.aggregate([
        {
            $group: {
            _id: "$user_id",
            total_problems_solved: { $sum: "$problems_solved" }
            }
        },
        {
            $lookup: {
            from: "users",
            localField: "_id",
            foreignField: "_id",
            as: "user_details"
            }
        },
        {
            $unwind: "$user_details"
        },
        {
            $project: {
            _id: 0,
            user_id: "$_id",
            name: "$user_details.name",
            email: "$user_details.email",
            total_problems_solved: 1
            }
        }
    ]).pretty()

output:
