alias ThxData.Schema.Sensor
alias ThxData.Schema.Schedule

s1 = ThxData.Repo.insert! %Sensor{
  name: "one",
  description: "sensor one",
  gpio: 1
}

ThxData.Repo.insert! %Sensor{
  name: "two",
  description: "sensor two",
  gpio: 2
}

ThxData.Repo.insert! %Schedule{
  sensor_id: s1.id,
  weekday: 1,
  #             00, 01 ,02, 03, 04, 05, 06, 07, 08, 09, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23
  temperature: [18, 18, 18, 18, 18, 18, 18, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 18, 18, 18]
}

