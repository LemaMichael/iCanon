#include <ESP8266WiFi.h>        // Include the Wi-Fi library

const char* ssid     = "";         // The SSID (name) of the Wi-Fi network you want to connect to
const char* password = "";     // The password of the Wi-Fi network
WiFiServer server(80);

void setup() {
    Serial.begin(115200);         // Start the Serial communication to send messages to the computer
    delay(10);
    Serial.println('\n');

    WiFi.begin(ssid, password);             // Connect to the network
    Serial.print("Connecting to ");
    Serial.print(ssid); Serial.println(" ...");
    
    int i = 0;
    while (WiFi.status() != WL_CONNECTED) { // Wait for the Wi-Fi to connect
        delay(1000);
        Serial.print(++i); Serial.print(' ');
    }
    
    Serial.println('\n');
    Serial.println("Connection established!");
    Serial.print("IP address:\t");
    Serial.println(WiFi.localIP());         // Send the IP address of the ESP8266 to the computer

    server.begin();
    pinMode(16, OUTPUT); 
    pinMode(5, OUTPUT); 
    pinMode(4, OUTPUT); 
    pinMode(0, OUTPUT); 
    pinMode(2, OUTPUT);  
    pinMode(14, OUTPUT); 
    pinMode(12, OUTPUT); 
    pinMode(13, OUTPUT); 
    pinMode(15, OUTPUT); 
}

void loop() { 
  WiFiClient client = server.available();
    if(!client) {
        return;
    }

    String req = client.readStringUntil('\r');
    Serial.println(req);
    client.flush();
    
    if (req.indexOf("/D0-HIGH") != -1) {
        digitalWrite(16, HIGH);
    } else if(req.indexOf("/D1-HIGH") != -1) {
        digitalWrite(5, HIGH);
    } else if(req.indexOf("/D2-HIGH") != -1) {
        digitalWrite(4, HIGH);
    } else if(req.indexOf("/D3-HIGH") != -1) {
        digitalWrite(0, HIGH);
    } else if(req.indexOf("/D4-HIGH") != -1) {
        digitalWrite(2, HIGH);
    } else if(req.indexOf("/D5-HIGH") != -1) {
        digitalWrite(14, HIGH);
    } else if(req.indexOf("/D6-HIGH") != -1) {
        digitalWrite(12, HIGH);
    } else if(req.indexOf("/D7-HIGH") != -1) {
        digitalWrite(13, HIGH);
    } else if(req.indexOf("/D8-HIGH") != -1) {
        digitalWrite(15, HIGH);
    } else if (req.indexOf("/D0-LOW") != -1) {
        digitalWrite(16, LOW);
    } else if(req.indexOf("/D1-LOW") != -1) {
        digitalWrite(5, LOW);
    } else if(req.indexOf("/D2-LOW") != -1) {
        digitalWrite(4, LOW);
    } else if(req.indexOf("/D3-LOW") != -1) {
        digitalWrite(0, LOW);
    } else if(req.indexOf("/D4-LOW") != -1) {
        digitalWrite(2, LOW);
    } else if(req.indexOf("/D5-LOW") != -1) {
        digitalWrite(14, LOW);
    } else if(req.indexOf("/D6-LOW") != -1) {
        digitalWrite(12, LOW);
    } else if(req.indexOf("/D7-LOW") != -1) {
        digitalWrite(13, LOW);
    } else if(req.indexOf("/D8-LOW") != -1) {
        digitalWrite(15, LOW);
    } else {
        client.stop();
        return;
    }
        client.flush();
  }
