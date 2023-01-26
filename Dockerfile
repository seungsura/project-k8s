FROM 192.168.0.195:5000/istio-fleetman-webapp-angular:latest
FROM 192.168.0.195:5000/istio-fleetman-vehicle-telemetry:latest
FROM 192.168.0.195:5000/istio-fleetman-staff-service:latest
FROM 192.168.0.195:5000/istio-fleetman-position-tracker:latest   
FROM 192.168.0.195:5000/istio-fleetman-position-simulator:latest
FROM 192.168.0.195:5000/istio-fleetman-api-gateway:latest
