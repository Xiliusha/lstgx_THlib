stage.group.New('menu',{},"Spell show",{lifeleft=0,power=400,faith=50000,bomb=0},false)
stage.group.AddStage('Spell show','Spell show@Spell show',{lifeleft=0,power=400,faith=50000,bomb=0},false)
stage.group.DefStageFunc('Spell show@Spell show','init',function(self)
    _init_item(self)
 ---  New(mask_fader,'open')
    New(reimu_player)
    task.New(self,function()
		PlaySound('tan00',0.1,0)
        task._Wait(300)
	end)
    task.New(self,function()
		while coroutine.status(self.task[1])~='dead' do task.Wait() end
		New(mask_fader,'close')
		_stop_music()
		task.Wait(30)
		stage.group.FinishStage()
	end)
end)
