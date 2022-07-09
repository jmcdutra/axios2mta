 --[[
  @author Vítor "itsflashii" Ribeiro
  @copyright (c) MIT
  @license See mode on https://rocketmta.com
--]]



function describe()
    axios.post("https://reqres.in/api/users", {}, { name="flashiie", movies={{"I Love you Man", "Role Models"}} }):after(function (data) 
        return iprint(data)
    end):catch(function (err)
        return iprint(err)
    end)    
end
addCommandHandler("spec_post", describe)