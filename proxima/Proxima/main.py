# Libraries
import speech_recognition as sr
import pyttsx3
import os, platform
from proxima import proximaCommand

DEBUG = False

# Variables
listener = sr.Recognizer()
engine = pyttsx3.init()
voices = engine.getProperty("voices")

device_name = platform.uname().node
if device_name == "Jacobs-Laptop":
    engine.setProperty("voice", voices[1].id)
elif device_name == "Jacobs-PC":
    engine.setProperty("voice", voices[2].id)

voice_mode = False

# Functions
def ExitProgam():  # Required to quit in CTk
    os._exit(0)

def say(text: str):
    if voice_mode:
        engine.say(text)
        engine.runAndWait()
    else:
        print(f""+ text +"\n")

def GetCommand(voice_mode):
    if voice_mode == True:
        global command
        with sr.Microphone() as source:
            listener.adjust_for_ambient_noise(source)
            print("Listening...")
            audio = listener.listen(source)

        try:
            command = ""
            command = listener.recognize_google(audio)
            print(f"I heard you say:" + command)
        
            if 'proxima' in command:
                command = command.replace('proxima', '')
                return command

              

            if DEBUG == True:
                print("Sphinx thinks you said " + listener.recognize_sphinx(audio))

        except sr.UnknownValueError:
            print("Google Speech Recognition could not understand audio")
        except sr.RequestError as e:
            print("Could not request results from Google Speech Recognition service; {0}".format(e))

        return ""


    
    elif voice_mode == False:
        command = input("Command:")
        return command

def RunProxima(mode):
    global voice_mode
    if mode == "voice":
        voice_mode = True
        print("voice mode")
    elif mode == "text":
        voice_mode = False
        print("text mode")

    while True:
        command = GetCommand(voice_mode)
        command = command.lower()

        if "quit" in command or "exit" in command:
            ExitProgam()

        # Weather
        elif "weather" in command and "current" in command or "now" in command:
            say(proximaCommand.weather_current())

        elif "weather" in command and "today" in command:
            say(proximaCommand.weather_today())

        elif "weather" in command and "tomorrow" in command:
            say(proximaCommand.weather_tomorrow())

        # Wallpapers
        elif "wallpaper" in command and "green" in command:
            say(proximaCommand.wallpaper_green())

        elif "wallpaper" in command and "red" in command:
            say(proximaCommand.wallpaper_red())

        elif "wallpaper" in command and "yellow" in command:
            say(proximaCommand.wallpaper_yellow())

        elif "wallpaper" in command and "blue" in command:
            say(proximaCommand.wallpaper_blue())

        elif "wallpaper" in command and "purple" in command:
            say(proximaCommand.wallpaper_purple())

        # Open programs
        elif "fusion" in command:
            say(proximaCommand.openFusion())

        elif "vr" in command or "virtual reality" in command:
            say(proximaCommand.start_vr())

        elif "siege" in command or "r6" in command or "r6s" in command:
            proximaCommand.r6siege()

        elif "extraction" in command:
            proximaCommand.r6extraction()

        # Search
        elif "search" in command or "google" in command or "look for" in command or "search for" in command:
            query = command.replace("search" or "google" or "look for", "")
            say(proximaCommand.search(query))

        elif "who is" in command or "who's" in command:
            person = command.replace("who is" or "who's", "")
            say(proximaCommand.whois_wikipedia(person))

        # Misc
        elif "time" in command:
            say(proximaCommand.gettime())

        elif "date" in command or "day" in command:
            say(proximaCommand.getdate())

        elif "play" in command or "i want to listen to" in command:
            requested_song = command.replace("play" or "i want to listen to", "")
            say(proximaCommand.playsong(requested_song))

        elif "open countdown" in command:
            proximaCommand.open_countdown()

        elif "clear" in command or "clear the console" in command:
            proximaCommand.clear_console()
# Print voices
if DEBUG == True:
    print("Voices: ")
    print(voices, voices[0].id)
    print(voices, voices[1].id)
    if device_name == "Jacobs-PC":
        print(voices, voices[2].id)
    
# Set mode
mode = input("Mode: ")
mode = mode.lower()
if "voice" in mode or "v" in mode:
    mode = "voice"
elif "text" in mode or "t" in mode:
    mode = "text"
else:
    mode = "text"
while True:
    RunProxima(mode)
    proximaCommand.check_for_siege()
