# HumidAPI

OO대학교 전자공학과 공학설계과목에서 사용하기 위한 어플리케이션입니다.

이 어플리케이션은 스마트폰 어플리케이션과 아두이노 디바이스를 서로 연동하기 위한 API 서버에 해당합니다.

```plaintext
+-----+   +-------------+   +---------+
| App +---+ Rails(this) +---+ Arduino |
+-----+   +-------------+   +---------+
```

* 스마트폰 어플리케이션은 [HumidAPP](https://github.com/Ch1keen/humidapp)에서 확인해주시기 바랍니다.

## Feature

* 아두이노 디바이스와 스마트폰 어플리케이션의 연결
* 스마트폰 어플리케이션에서 온도, 습도, 미세먼지 정보 읽기

## API Specification

### Models

* Devices : userid, devicesn

* Logs : humidity, temperature, pm2p5, pm10

### Devices

* `POST /api/devices (devices#create)`

    새 장비를 등록한다.

* `GET /api/devices/:id (devices#show)`

    장비의 정보와 현재 상태(온도, 습도, 미세먼지, 작동 여부)를 반환한다.

* `DELETE /api/devices/:id (devices#destroy)`

    등록된 장비를 제거한다.

### logs

* `POST /api/logs (logs#create)`

    아두이노로부터 새 로그를 등록한다.

### 인증

인증을 진행할 좋은 방법을 알고 있는 것 같지만 일단은 생각하지 않는다.

