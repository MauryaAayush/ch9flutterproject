# API 

# API Documentation 🔗

### 1. What is an API? 🌐

An *API (Application Programming Interface)* is a set of rules and protocols for building and interacting with software applications. APIs define how different software components should interact, allowing them to communicate with each other. APIs are used to access web services, databases, and other resources, enabling integration and functionality between different systems.

#### Key Components of an API:
- *Endpoints*: Specific URLs where API requests are sent.
- *Methods*: HTTP methods such as GET, POST, PUT, DELETE used to perform actions.
- *Requests and Responses*: The format and structure of data sent to and received from the API.
- *Authentication*: Mechanisms to verify the identity of the client making the request, such as API keys or tokens.

### 2. Types of APIs 📚

There are several types of APIs based on their use cases and the way they interact with other systems:

- *Web APIs*: Allow communication between web servers and clients.
- *Library APIs*: Facilitate the use of libraries and software components in applications.
- *Operating System APIs*: Provide functionalities for interacting with the operating system.
- *Database APIs*: Enable interaction with database management systems.
- *Remote APIs*: Access resources located on remote servers.

### 3. CRUD Operations in API 🔄

CRUD operations refer to the four basic operations that can be performed on data:

- *Create*: Adding new data (using HTTP POST method).
- *Read*: Retrieving existing data (using HTTP GET method).
- *Update*: Modifying existing data (using HTTP PUT or PATCH method).
- *Delete*: Removing existing data (using HTTP DELETE method).

### 4. Why Postman is Important for API? 🛠

Postman is a popular tool for API development and testing. It provides a user-friendly interface for:

- *Creating and Sending Requests*: Easily create and send requests to API endpoints.
- *Testing and Debugging*: Test API responses and debug issues.
- *Automation*: Automate API testing with scripts and collections.
- *Collaboration*: Share APIs and collaborate with team members.

### 5. What is JSON? 🧩

*JSON (JavaScript Object Notation)* is a lightweight data interchange format that is easy for humans to read and write and easy for machines to parse and generate. It is commonly used for transmitting data between a server and a client in web applications.

#### Key Features of JSON:
- *Lightweight*: Minimal syntax makes it easy to read and write.
- *Language Independent*: Can be used with most programming languages.
- *Structured*: Uses key-value pairs and arrays to represent data.

### 6. What is a Server? 🖥

A *server* is a computer system or software application that provides services, resources, or data to other computers, known as clients, over a network. Servers perform various functions, such as hosting websites, storing data, running applications, and processing requests from clients. They are powerful machines often designed to handle multiple requests simultaneously and ensure high availability and reliability.

#### Key Functions of a Server:
- *Hosting*: Servers host websites, applications, and data.
- *Processing Requests*: They handle requests from clients, process them, and return the appropriate responses.
- *Storage*: Servers store large amounts of data and make it accessible to clients.
- *Security*: They manage access controls, user authentication, and protect data from unauthorized access.

### 7. What is a Client? 📱

A *client* is a computer system or software application that requests services, resources, or data from a server. Clients interact with servers over a network, typically the internet. Examples of clients include web browsers, mobile apps, and desktop applications.

#### Key Functions of a Client:
- *Requesting Services*: Clients send requests to servers for specific services or data.
- *User Interaction*: They provide interfaces for users to interact with, such as web pages or app interfaces.
- *Processing Responses*: Clients receive responses from servers and display or process the information as needed.
- *Local Processing*: They may perform some processing tasks locally, such as rendering web pages or handling user input.

### 8. What is a Model? 📊

In the context of software development, a *model* represents the data structure or the business logic layer of an application. Models define how data is stored, retrieved, and manipulated. They often correspond to database tables and are used to encapsulate the data and provide methods to interact with it.

#### Key Functions of a Model:
- *Data Representation*: Models define the structure and types of data.
- *Data Manipulation*: They provide methods to create, read, update, and delete data.
- *Validation*: Models often include validation rules to ensure data integrity.
- *Business Logic*: They encapsulate the core business logic related to data processing.

### 9. Flow from Server to Client to Server 📈

#### Step 1: Client Interaction
- *Description*: The user interacts with the client application. This could be a web browser, a mobile app, or any other interface designed to communicate with the server.
- *Example*: A user clicks a button to fetch data, inputs text, or performs any action that triggers a request to the server.

#### Step 2: Request Sent to Server
- *Description*: The client application sends a request to the server. This request is typically sent over HTTP/HTTPS and includes necessary data, such as user input or session information.
- *Example*: The client sends a GET or POST request to the server's API endpoint.

#### Step 3: API Processes the Request
- *Description*: The server receives the request and routes it to the appropriate API endpoint. The API processes the request, validating inputs and preparing data for further operations.
- *Example*: The API checks if the request contains valid authentication tokens and required parameters.

#### Step 4: Model Interaction
- *Description*: The API interacts with the model, which could involve querying a database, running computations, or invoking machine learning algorithms. The model processes the data and generates a response.
- *Example*: The model retrieves user data from a database or predicts outcomes based on input data.

#### Step 5: Response Sent Back to API
- *Description*: The model completes its operations and sends the result back to the API. This response includes the necessary data or output generated by the model.
- *Example*: The model returns a JSON object containing user information or analysis results.

#### Step 6: API Sends Response to Server
- *Description*: The API receives the response from the model and formats it if necessary. The API then sends the formatted response back to the server.
- *Example*: The API packages the model's response into a standardized format like JSON or XML.

#### Step 7: Server Sends Response Back to Client
- *Description*: The server receives the response from the API and sends it back to the client application. This response travels over the same HTTP/HTTPS connection established by the initial request.
- *Example*: The server responds with a status code and the data payload, indicating success or failure.

#### Step 8: Client Receives and Processes Response
- *Description*: The client application receives the response from the server and processes it. This could involve updating the UI, displaying messages to the user, or performing additional client-side operations.
- *Example*: The client updates the user interface to display the fetched data or shows an error message if the request failed.

### Flowchart 🔄

```plaintext
+--------------------+
|      Client        |
+--------------------+
| 1. User interacts  |
|    with the client |
+---------|----------+
          |
          v
+--------------------+
|      Server        |
+--------------------+
| 2. Client sends a  |
|    request to the  |
|    server via API  |
+---------|----------+
          |
          v
+--------------------+
|       API          |
+--------------------+
| 3. API processes   |
|    the request and |
|    validates input |
+---------|----------+
          |
          v
+--------------------+
|       Model        |
+--------------------+
| 4. API interacts   |
|    with the model  |
+---------|----------+
          |
          v
+--------------------+
|       Model        |
+--------------------+
| 5. Model performs  |
|    data operations |
|    and returns the |
|    result to API   |
+---------|----------+
          |
          v
+--------------------+
|       API          |
+--------------------+
| 6. API formats and |
|    sends response  |
|    to the server   |
+---------|----------+
          |
          v
+--------------------+
|      Server        |
+--------------------+
| 7. Server sends    |
|    the response    |
|    back to client  |
+---------|----------+
          |
          v
+--------------------+
|      Client        |
+--------------------+
| 8. Client receives |
|    and processes   |
|    the response    |
+--------------------+
```

### Detailed Steps in the Flowchart

1. *Client:*
   - User interaction triggers a request.
   - Example: A user clicks "Submit" on a form.

2. *Server:*
   - Receives request from the client.
   - Example: Server endpoint /submit is called.

3. *API:*
   - Processes request, validates input, and prepares data.
   - Example: API checks for valid inputs and authentication.

4. *Model:*
   - API interacts with the model.
   - Example: API calls model


##
<h3 align="center"><i>WallPaper Set</i></h3>

## Dependencies:
* http: ^1.2.1
* path_provider: ^2.0.13
* async_wallpaper: ^2.0.3
* file_picker: ^5.0.1
* provider: ^6.1.2


##
<div align="center">
 
<img src="https://github.com/MauryaAayush/ch9flutterproject/assets/143180849/33a5b97b-b54d-4261-bcc2-32ecc104fd25" height=500px hspace=20>

 <video src = "https://github.com/MauryaAayush/ch9flutterproject/assets/143180849/38a547b3-7dd1-4cd7-967e-65f38351e0fe">
</div>

###
<div align="center">
<a href="https://github.com/MauryaAayush/ch9flutterproject/tree/master/lib/Day1">-> 👉📚 See The Code 📚 👈<-</a>
</div>




##
<h3 align="center"><i>PixaBay Api</i></h3>

## Dependencies:
* http: ^1.2.1
* provider: ^6.1.2

##
<div align="center">
 
<img src="https://github.com/MauryaAayush/ch9flutterproject/assets/143180849/ca43163c-cdd8-4c64-959d-d5951f5e2147" height=500px hspace=20>
<img src="https://github.com/MauryaAayush/ch9flutterproject/assets/143180849/318c5187-0c0d-4f15-bb4c-83a147779df2" height=500px hspace=20>
<img src="https://github.com/MauryaAayush/ch9flutterproject/assets/143180849/2e9ec486-99ab-41cd-bfcd-75e07ffd4068" height=500px hspace=20>

 <video src = "https://github.com/MauryaAayush/ch9flutterproject/assets/143180849/0c3b39b5-0a27-4c9d-9f1f-3981bd7cbc0c">
</div>

###
<div align="center">
<a href="https://github.com/MauryaAayush/ch9flutterproject/tree/master/lib/Day2/ApiWallPaper">-> 👉📚 See The Code 📚 👈<-</a>
</div>


