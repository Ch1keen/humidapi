# Humid Application

OO대학교 전자공학과 공학설계과목에서 사용하기 위한 어플리케이션입니다.

이 어플리케이션은 스마트폰 어플리케이션과 아두이노 디바이스를 서로 연동하기 위한 API 서버에 해당합니다.

```plaintext
+-----+   +-------------+   +---------+
| App +---+ Rails(this) +---+ Arduino |
+-----+   +-------------+   +---------+
```

## Feature

* 아두이노 디바이스와 스마트폰 어플리케이션의 연결
* 스마트폰 어플리케이션에서 온도, 습도, 미세먼지 정보 읽기
* 스마트폰 어플리케이션에서 아두이노 디바이스와 연결된 팬을 조작할 수 있음

## API Specification

### Models

* Devices : userid, devicesn

* Logs : humidity, temperature, pm2p5, pm10

### Devices

* `GET /api/devices (devices#index)`

* `GET /api/devices/new (devices#new)`

* `POST /api/devices (devices#create)`

    새 장비를 등록한다.

* `GET /api/devices/:id (devices#show)`

    장비의 정보와 현재 상태(온도, 습도, 미세먼지, 작동 여부)를 반환한다.

* `GET /api/devices/:id/edit (devices#edit)`

* `PATCH/PUT /api/devices/:id (devices#update)`

    팬을 켜거나 끈다.

* `DELETE /api/devices/:id (devices#destroy)`

    등록된 장비를 제거한다.

### logs

* `GET /api/logs (logs#index)`

* `GET /api/logs/new (logs#new)`

* `POST /api/logs (logs#create)`

    아두이노로부터 새 로그를 등록한다.

* `GET /api/logs/:id (logs#show)`

* `GET /api/logs/:id/edit (logs#edit)`

* `PATCH/PUT /api/logs/:id (logs#update)`

* `DELETE /api/logs/:id (logs#destroy)`

### 인증

인증을 진행할 좋은 방법을 알고 있는 것 같지만 일단은 생각하지 않는다.

## To-Dos

* 시간 기반으로 기기 연결 상태 확인
