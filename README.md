# axios2mta :alien:
This is an http request client, it is very flexible and works perfectly emulating the Javascript promise system to the maximum, the system is scalable and very similar to axios.


### How to Import
First of all, you need to import the library BEFORE your modules
```xml
<script src="path/to/myfolder/libs/axios2mta.lua" type="shared" />
```

### How to make a Request
```lua
function myAmazingFunction()
    axios.get("https://reqres.in/api/users", {}):after(function (data)  
        return iprint(data) -- Returns the succecss body data
    end):catch(function (err) 
        return iprint(err) -- Returns the headers and body data
    end)
end
addCommandHandler("getusers", myAmazingFunction)

function myAmazingFunction()
    axios.post("https://reqres.in/api/users", {}, { name="flashiie"} }):after(function (data) 
        return iprint(data)  -- Returns the succecss body data
    end):catch(function (err)
        return iprint(err) -- Returns the headers and body data
    end)    
end
addCommandHandler("registeruser", myAmazingFunction)

```

### How does it work? 🤓
This is a relatively simple module, it uses routines to create a wait until the request is completed, the promise module is separate from the http client itself, so you can modify it to use with other types of c functions like a dbQuery for example. Which is? **after, catch**?
The declaration of promises with **"then"** and **"catch"** is very common in Javascript and other web languages, however.. as nothing is easy we don't have this explicitly in Multi theft auto's LUA, at least not without headaches! **after** is the identifier that indicates what to do when the response is successfully completed or finished in general, while **catch** serves to "catch" and identify an error or other expectation in the function.


<br>

Contribute or consider following me at:

| [![Vítor Ribeiro](https://github.com/itsflashii.png?size=100)](https://github.com/itsflashii) |
| ----------------------------------------------------------------------------------------------- |
| [Vítor Ribeiro](https://github.com/itsflashii)     
