 --[[
  @author Vítor "itsflashii" Ribeiro
  @copyright (c) MIT
  @license See mode on https://rocketmta.com
--]]


function describe()
    axios.get("https://reqres.in/api/users", {}):after(function (data) 
        return iprint(data)
    end):catch(function (err) 
        return iprint(err)
    end)
end
addCommandHandler("spec_get", describe)