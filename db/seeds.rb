roles = ['Teacher', 'Students', 'Ta']

10.times do 
    course = Course.create(name: "course_#{i}")

    10.times do
        user = User.create(
            first_name: "first_#{i}_#{j}",
            last_name: "last_#{i}_#{j}"
            )

        Enrollment.create(
            role: roles.sample,
            course_id: course.id,
            user_id: user.id
            )
    end
end