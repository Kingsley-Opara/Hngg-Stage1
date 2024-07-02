from fastapi import FastAPI, Request
# from fastapi_geolocation import GeoIPMiddleware
# import aioredis

app = FastAPI()


# redis_client = aioredis.from_url("redis://localhost", encoding="utf-8", decode_responses=True)
# app.add_middleware(GeoIPMiddleware, redis_client=redis_client, license_key="mykey")

@app.get('/api/hello', status_code=200)
def home(request:Request, visitor_name = 'Mark'):

    Response = {
        'client_ip': request.client.host,
        'location': "Nigeria",
        "greeting": f"Hello, {visitor_name} the temperature is 32 degrees Celcius in Nigeria"
    }
    return Response