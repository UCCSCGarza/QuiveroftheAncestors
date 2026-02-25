// When the lifetime of the popup is up, unpause and resume audio (if needed), then destroy the instance.
global.paused = 0
		
audio_resume_all()

instance_destroy()