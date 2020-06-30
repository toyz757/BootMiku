# coding: utf-8

import speech_recognition as sr

r=sr.Recognizer()
with sr.Microphone() as source:
    r.adjust_for_ambient_noise(source,duration=1)
    # r.energy_threshold()
    audio= r.listen(source)
    try:
        text = r.recognize_google(audio, language='ja-JP')
        print(text)
    except:
        print("失敗しました")