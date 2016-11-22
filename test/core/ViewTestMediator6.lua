require "puremvc/patterns/Mediator/Mediator"
local class = require 'middleclass'

ViewTestMediator6 = class("ViewTestMediator6", Mediator)

ViewTestMediator6.static.NAME = "ViewTestMediator6"
		
function ViewTestMediator6:initialize(name, view) 
    --print("ViewTestMediator6:initialize " .. name)
    Mediator:initialize(name, view)
end

function ViewTestMediator6:ListNotificationInterests()
    return { ViewTest.NOTE6 }
end

function ViewTestMediator6:HandleNotification(notification)
    --print("ViewTestMediator6:HandleNotification " .. self:GetMediatorName())
    self:GetFacade():RemoveMediator(Mediator:GetMediatorName())
end

function ViewTestMediator6:OnRemove()
    self:GetViewComponent().counter = self:GetViewComponent().counter + 1
end