alias Elixir.Robot.Repo, as: Repo

{:ok, %{id: robot_id}} = Repo.insert(%Robot.Robot{name: "tobor"})

{:ok, %{id: arm_id_1}} = Repo.insert(%Robot.Arm{name: "Right Arm", robot_id: robot_id})

{:ok, %{id: hand_id_1}} = Repo.insert(%Robot.Hand{name: "Right Arm Hand One", arm_id: arm_id_1})
{:ok, %{id: hand_id_2}} = Repo.insert(%Robot.Hand{name: "Right Arm Hand Two", arm_id: arm_id_1})

{:ok, %{id: finger_id_1}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger One", hand_id: hand_id_1})
{:ok, %{id: finger_id_2}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Two", hand_id: hand_id_1})
{:ok, %{id: finger_id_3}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Three", hand_id: hand_id_1})

{:ok, %{id: finger_id_4}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Three", hand_id: hand_id_2})

###

{:ok, %{id: arm_id_2}} = Repo.insert(%Robot.Arm{name: "Top Arm", robot_id: robot_id})

{:ok, %{id: hand_3_id}} = Repo.insert(%Robot.Hand{name: "Center Arm Hand One", arm_id: arm_id_2})

{:ok, %{id: finger_id_5}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger One", hand_id: hand_3_id})
{:ok, %{id: finger_id_6}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Two", hand_id: hand_3_id})
{:ok, %{id: finger_id_7}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Three", hand_id: hand_3_id})
{:ok, %{id: finger_id_8}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Four", hand_id: hand_3_id})
{:ok, %{id: finger_id_9}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Five", hand_id: hand_3_id})
{:ok, %{id: finger_id_10}} = Repo.insert(%Robot.Finger{name: "Right Arm Hand One Finger Six", hand_id: hand_3_id})

###

{:ok, %{id: arm_id_3}} = Repo.insert(%Robot.Arm{name: "Left Arm", robot_id: robot_id})

{:ok, %{id: hand_4_id}} = Repo.insert(%Robot.Hand{name: "Left Arm Hand One", arm_id: arm_id_3})
{:ok, %{id: hand_5_id}} = Repo.insert(%Robot.Hand{name: "Left Arm Hand Two", arm_id: arm_id_3})
{:ok, %{id: hand_6_id}} = Repo.insert(%Robot.Hand{name: "Left Arm Hand Three", arm_id: arm_id_3})

# Fingers

