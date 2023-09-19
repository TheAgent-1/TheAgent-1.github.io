import random
import pywhatkit
import subprocess
import os, platform
import wikipedia
import requests

acknowledegments = [
    "Sure thing Boss, ",
    "Ok, ",
    "Understood, ",
    "Got it, ",
    "Absolutely, ",
    "No problem, ",
    "Certainly, ",
    "Roger that, ",
    "You got it, ",
    "Consider it done, ",
]
return_msg = random.choice(acknowledegments)

class proximaCommand:
    # Weather
    def weather_current():
        res = requests.get('https://ipinfo.io/')
        data = res.json()
        citydata = data['city']
        print(citydata)
        url = 'https://wttr.in/{}'.format(citydata)
        added_params = '?0'
        res = requests.get(url+added_params)
        print(res.text)
        return f"" + return_msg + "you can find it in your console"
    
    def weather_today():
        res = requests.get('https://ipinfo.io/')
        data = res.json()
        citydata = data['city']
        print(citydata)
        url = 'https://wttr.in/{}'.format(citydata)
        added_params = '?1'
        res = requests.get(url+added_params)
        print(res.text)
        return f"" + return_msg + "you can find it in your console"
        
    def weather_tomorrow():
        res = requests.get('https://ipinfo.io/')
        data = res.json()
        citydata = data['city']
        print(citydata)
        url = 'https://wttr.in/{}'.format(citydata)
        added_params = '?2'
        res = requests.get(url+added_params)
        print(res.text)
        return f"" + return_msg + "you can find it in your console"

    
    # Wallpapers
    def wallpaper_green():
        import ctypes

        SPI_SETDESKWALLPAPER = 20
        WALLPAPER_PATH = "C:/Users/jacob/OneDrive/Desktop/Other/wallpapers/wallpaper_green.jpg"

        # Set the desktop wallpaper
        ctypes.windll.user32.SystemParametersInfoW(SPI_SETDESKWALLPAPER, 0, WALLPAPER_PATH, 2)
        return f"" + return_msg + "The wallpaper has been changed"

    def wallpaper_red():
        import ctypes

        SPI_SETDESKWALLPAPER = 20
        WALLPAPER_PATH = "C:/Users/jacob/OneDrive/Desktop/Other/wallpapers/wallpaper_red.jpg"

        # Set the desktop wallpaper
        ctypes.windll.user32.SystemParametersInfoW(SPI_SETDESKWALLPAPER, 0, WALLPAPER_PATH, 2)
        return f"" + return_msg + "The wallpaper has been changed"
    
    def wallpaper_yellow():
        import ctypes

        SPI_SETDESKWALLPAPER = 20
        WALLPAPER_PATH = "C:/Users/jacob/OneDrive/Desktop/Other/wallpapers/wallpaper_yellow.jpg"

        # Set the desktop wallpaper
        ctypes.windll.user32.SystemParametersInfoW(SPI_SETDESKWALLPAPER, 0, WALLPAPER_PATH, 2)
        return f"" + return_msg + "The wallpaper has been changed"
    
    def wallpaper_blue():
        import ctypes

        SPI_SETDESKWALLPAPER = 20
        WALLPAPER_PATH = "C:/Users/jacob/OneDrive/Desktop/Other/wallpapers/wallpaper_blue.jpg"

        # Set the desktop wallpaper
        ctypes.windll.user32.SystemParametersInfoW(SPI_SETDESKWALLPAPER, 0, WALLPAPER_PATH, 2)
        return f"" + return_msg + "The wallpaper has been changed"
    
    def wallpaper_purple():

        import ctypes

        SPI_SETDESKWALLPAPER = 20
        WALLPAPER_PATH = "C:/Users/jacob/OneDrive/Desktop/Other/wallpapers/wallpaper_purple.jpg"

        # Set the desktop wallpaper
        ctypes.windll.user32.SystemParametersInfoW(SPI_SETDESKWALLPAPER, 0, WALLPAPER_PATH, 2)
        return f"" + return_msg + "The wallpaper has been changed"
    
    # Open programs
    def openFusion():
        device_name = platform.uname().node
        if device_name == "Jacobs-Laptop":
            program_path = r"C:/Users/Jacob/AppData/Local/Autodesk/webdeploy/production/6a0c9611291d45bb9226980209917c3d/FusionLauncher.exe"
        elif device_name == "Jacobs-PC":
            program_path = r"C:/Users/jacob/AppData/Local/Autodesk/webdeploy/production/6a0c9611291d45bb9226980209917c3d/FusionLauncher.exe"

        subprocess.run(["start", program_path], shell=True)
        return return_msg

    def start_vr():
        device_name = platform.uname().node
        if device_name == "Jacobs-Laptop":
            return "Sorry, your device does not support VR"
        elif device_name == "Jacobs-PC":
            program_path = r"C:/Program Files (x86)/VIVE/Updater/App/ViveEyeSettings/ViveSettings.exe"
            arguments = "/launch_console"
            subprocess.run([program_path, arguments], shell=True)
            program_path = "steam://rungameid/250820"
            subprocess.run(["start", program_path], shell=True)
            return f"" + return_msg + "I'll start your VR programs"

    def r6siege():
        device_name = platform.uname().node
        if device_name == "Jacobs-Laptop":
            return "Sorry, your device will not run Rainbow 6 Siege"
        elif device_name == "Jacobs-PC":
            program1 = "steam://rungameid/359550"
            program2 = r"C:/Users/jacob/AppData/Local/Discord/Update.exe"
            program2_args = "--processStart Discord.exe"
            subprocess.run([program1], shell=True)
            subprocess.run([program2, program2_args], shell=True)

    def r6extraction():
        device_name = platform.uname().node
        if device_name == "Jacobs-Laptop":
            return "Sorry, your device will not run Rainbow 6 Extraction"
        elif device_name == "Jacobs-PC":
            program1 = "steam://rungameid/2379390"
            program2 = r"C:/Users/jacob/AppData/Local/Discord/Update.exe"
            program2_args = "--processStart Discord.exe"
            subprocess.run([program1], shell=True)
            subprocess.run([program2, program2_args], shell=True)   



        
    # Search
    def search(query: str):
        print(query)
        try:
            from googlesearch import search
        except ImportError:
            print("No module named 'google' found")
        for j in search(query):
            print(j)
        return f"" + return_msg + "you can find the results in your console"
    
    def whois_wikipedia(person: str):
        search = wikipedia.page(person).url
        print(search)
        return f"" + return_msg + "you can find the result in your console"
    
    # Misc
    def gettime():
        from datetime import datetime
        now = datetime.now()
        current_time = now.strftime("%H:%M")
        return f"The current time is " + current_time
    
    def getdate():
        from datetime import datetime
        date = datetime.now()
        current_date = date.strftime("%A %d %B %Y")
        return f"The current date is " + current_date

    def playsong(song: str):
        pywhatkit.playonyt(song)
        return f"" + return_msg + "playing the requested song on youtube"

    def open_countdown():
        import webbrowser
        webbrowser.open('https://www.countdown.co.nz')

    def clear_console():
        os.system('cls')





    def check_for_siege():
        from datetime import datetime

        date_time = datetime.now()
        date = date_time.strftime("%A")
        date_check = "Thursday"
        time = date_time.strftime("%I %M %p")
        time_check = "08 00 PM"
        if date == date_check and time == time_check:
            proximaCommand.r6siege()
        else:
            return