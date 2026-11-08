<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="2575.7">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 13.0px 'Helvetica Neue'; min-height: 15.0px}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 13.0px 'Helvetica Neue'}
  </style>
</head>
<body>
<p class="p1"><br></p>
<p class="p1"><br></p>
<p class="p1"><br></p>
<p class="p2">(() =&gt; {</p>
<p class="p2"><span class="Apple-converted-space">  </span>const old = document.getElementById('filthy-cookie-box');</p>
<p class="p2"><span class="Apple-converted-space">  </span>if (old) old.remove();</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>// Create everything without innerHTML (Trusted Types safe)</p>
<p class="p2"><span class="Apple-converted-space">  </span>const box = document.createElement('div');</p>
<p class="p2"><span class="Apple-converted-space">  </span>box.id = 'filthy-cookie-box';</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>const cookieEl = document.createElement('div');</p>
<p class="p2"><span class="Apple-converted-space">  </span>cookieEl.id = 'fc-cookie';</p>
<p class="p2"><span class="Apple-converted-space">  </span>cookieEl.textContent = '🍪';</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>const countEl = document.createElement('div');</p>
<p class="p2"><span class="Apple-converted-space">  </span>countEl.id = 'fc-count';</p>
<p class="p2"><span class="Apple-converted-space">  </span>countEl.textContent = '0 cookies';</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>const talkEl = document.createElement('div');</p>
<p class="p2"><span class="Apple-converted-space">  </span>talkEl.id = 'fc-talk';</p>
<p class="p2"><span class="Apple-converted-space">  </span>talkEl.textContent = 'Click me, you fucking loser.';</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>box.appendChild(cookieEl);</p>
<p class="p2"><span class="Apple-converted-space">  </span>box.appendChild(countEl);</p>
<p class="p2"><span class="Apple-converted-space">  </span>box.appendChild(talkEl);</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>const style = document.createElement('style');</p>
<p class="p2"><span class="Apple-converted-space">  </span>style.textContent = `</p>
<p class="p2"><span class="Apple-converted-space">    </span>#filthy-cookie-box {</p>
<p class="p2"><span class="Apple-converted-space">      </span>position: fixed !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>top: 12px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>left: 12px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>width: 320px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>background: #120c08 !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>color: #f5e6c8 !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>font-family: -apple-system, BlinkMacSystemFont, sans-serif !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>border-radius: 12px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>padding: 18px 14px 16px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>box-shadow: 0 8px 28px rgba(0,0,0,0.65) !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>z-index: 2147483647 !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>user-select: none !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>text-align: center !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>line-height: 1.3 !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>pointer-events: auto !important;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>#fc-cookie {</p>
<p class="p2"><span class="Apple-converted-space">      </span>font-size: 72px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>cursor: pointer !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>transition: transform 0.07s, opacity 0.3s !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>filter: drop-shadow(0 6px 14px rgba(0,0,0,0.6)) !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>margin-bottom: 4px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>display: block !important;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>#fc-cookie:active { transform: scale(0.9) !important; }</p>
<p class="p2"><span class="Apple-converted-space">    </span>#fc-cookie.disabled {</p>
<p class="p2"><span class="Apple-converted-space">      </span>opacity: 0.4 !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>cursor: not-allowed !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>filter: grayscale(0.7) drop-shadow(0 6px 14px rgba(0,0,0,0.6)) !important;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>#fc-count {</p>
<p class="p2"><span class="Apple-converted-space">      </span>font-size: 1.45rem !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>font-weight: 700 !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>margin: 6px 0 8px !important;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>#fc-talk {</p>
<p class="p2"><span class="Apple-converted-space">      </span>font-size: 0.92rem !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>min-height: 48px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>padding: 0 6px !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>opacity: 0.95 !important;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>.fc-float {</p>
<p class="p2"><span class="Apple-converted-space">      </span>position: absolute !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>font-size: 1.1rem !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>pointer-events: none !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>animation: fcFloat 0.7s forwards !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>color: #ffd700 !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>font-weight: bold !important;</p>
<p class="p2"><span class="Apple-converted-space">      </span>z-index: 2147483647 !important;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>@keyframes fcFloat {</p>
<p class="p2"><span class="Apple-converted-space">      </span>0% { opacity: 1; transform: translateY(0) scale(1); }</p>
<p class="p2"><span class="Apple-converted-space">      </span>100% { opacity: 0; transform: translateY(-70px) scale(1.25); }</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">  </span>`;</p>
<p class="p2"><span class="Apple-converted-space">  </span>document.head.appendChild(style);</p>
<p class="p2"><span class="Apple-converted-space">  </span>document.body.appendChild(box);</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>let cookies = 0;</p>
<p class="p2"><span class="Apple-converted-space">  </span>let canClick = true;</p>
<p class="p2"><span class="Apple-converted-space">  </span>let speaking = false;</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>const lines = [</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Fuck you, you absolute piece of shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're a pathetic fucking whore.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Keep clicking, you useless cunt.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're a complete waste of fucking skin.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Fuck off, loser.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go fucking die already.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I fucking hate you.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're pure fucking garbage.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your parents regret the fuck out of you.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You smell like failure and cheap fucking deodorant.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Even your reflection is fucking disappointed.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You have the personality of wet fucking cardboard.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Nobody will ever fucking love you.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your bloodline is a goddamn mistake.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're the reason fucking condoms exist.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your face looks like it lost a fight with a fucking cheese grater.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I'd rather lick a public toilet than talk to your ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You bring down the IQ of every fucking room you enter.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your existence is a clerical fucking error.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Even your dog is embarrassed of your shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You look like you were assembled by a fucking idiot.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"People cross the street to avoid your shitty vibe.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your personality is a fucking participation trophy.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're the human version of a software fucking bug.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"If disappointment had a face, it would be your ugly ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your parents still check the fucking return policy on you.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You have the charisma of a damp fucking sock.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"A tree is wasting oxygen on your worthless ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're not even the main character in your own shitty life.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your aura is just low fucking battery.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"People forget you exist while you're still in the goddamn room.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You have the emotional range of a fucking spoon.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Even customer service would hang up on your ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Is your finger broken or just fucking stupid?",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I've been clicked better by a fucking corpse.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"My crumbs have better reaction time than your slow ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're slower than dial-up in 2003, you fuck.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Put some fucking effort in, asshole.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"This is the saddest clicking I've ever fucking witnessed.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're bad at this. Like, really fucking bad.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Even a blind guy would do better than your shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Quit while you're behind, you fucking champ.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Skill issue. Permanent fucking one.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You will die alone and unfuckingloved.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"This is the highlight of your shitty day, isn't it?",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Touch grass before you touch me again, fucker.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your search history is more interesting than your boring ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go outside. Or don't. Nobody gives a flying fuck.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're proof natural selection is fucking broken.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope your next shit is pure liquid, asshole.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Delete yourself, you fucking waste.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"The world would be slightly better without your ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"You're not even worth the calories I fucking contain.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope every sock you own gets fucking wet.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May your phone always be at 1%, you dick.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you step on a Lego every fucking morning.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your Wi-Fi should forever be unstable, bitch.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope your favorite show gets fucking cancelled.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May both sides of your pillow be warm, asshole.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you always miss the green fucking light.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Your charger should only work at weird fucking angles.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you forever itch in places you can't fucking scratch.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May your tea always be slightly too cold, you cunt.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go die in a fucking fire.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get hit by a fucking bus.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Choke on a fucking bag of dicks.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope your skin peels off in your fucking sleep.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get trapped in a burning fucking building.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a piano falls on your worthless fucking head.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go drown in a shallow fucking puddle.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get buried alive, you piece of shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May your blood turn to fucking acid.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get eaten by rats while you're still fucking breathing.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get crushed by a fucking elevator.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope your bones dissolve while you're still fucking conscious.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you fall into a wood chipper feet first, asshole.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get locked in a freezer and slowly fucking freeze.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get run over by a steamroller, you fucking waste.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope your organs fail one by one, you cunt.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get impaled on a rusty fucking spike.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you burn from the inside out, you piece of shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get torn apart by wild fucking dogs.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get buried under a collapsing fucking building.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get hit by a fucking train.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May a falling air conditioner crush your fucking skull.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get struck by fucking lightning twice.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get sucked into a jet engine, you piece of shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a vending machine falls on your worthless ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get trapped in a fucking microwave.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get run over by a cement mixer, asshole.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get eaten alive by piranhas, you cunt.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a bridge collapses while you're fucking under it.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get locked in a car trunk on a hot fucking day.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you fall into a volcano, you fucking idiot.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get crushed in a fucking trash compactor.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a chandelier falls and impales your stupid ass.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get trapped in an elevator with no fucking air.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get hit by a meteor, you lucky piece of shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get slowly dissolved in a fucking vat of acid.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a tree falls and pins you underwater, asshole.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get stuck in a burning fucking car.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get pulled into industrial machinery feet first, you waste.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get buried in an avalanche, you fucking loser.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a crane drops a steel beam on your head, cunt.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get trapped in a collapsing fucking mine.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope you get run down by a stampede of fucking bulls.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get frozen solid and shattered, you piece of shit.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a gas explosion turns you into fucking confetti.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get stuck head-first in a fucking wood chipper.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a ferry sinks with you on it, asshole.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"Go get crushed between two fucking subway trains.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"I hope a runaway truck flattens your entire fucking body.",</p>
<p class="p2"><span class="Apple-converted-space">    </span>"May you get locked in a room filling with fucking concrete."</p>
<p class="p2"><span class="Apple-converted-space">  </span>];</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>function getGirlVoice() {</p>
<p class="p2"><span class="Apple-converted-space">    </span>const voices = window.speechSynthesis ? speechSynthesis.getVoices() : [];</p>
<p class="p2"><span class="Apple-converted-space">    </span>if (!voices.length) return null;</p>
<p class="p2"><span class="Apple-converted-space">    </span>const preferred = [/samantha/i, /karen/i, /moira/i, /tessa/i, /zira/i, /female/i];</p>
<p class="p2"><span class="Apple-converted-space">    </span>for (const re of preferred) {</p>
<p class="p2"><span class="Apple-converted-space">      </span>const v = voices.find(x =&gt; re.test(x.name));</p>
<p class="p2"><span class="Apple-converted-space">      </span>if (v) return v;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>return voices.find(v =&gt; v.lang &amp;&amp; v.lang.startsWith('en')) || voices[0];</p>
<p class="p2"><span class="Apple-converted-space">  </span>}</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>function unlock() {</p>
<p class="p2"><span class="Apple-converted-space">    </span>speaking = false;</p>
<p class="p2"><span class="Apple-converted-space">    </span>canClick = true;</p>
<p class="p2"><span class="Apple-converted-space">    </span>cookieEl.classList.remove('disabled');</p>
<p class="p2"><span class="Apple-converted-space">  </span>}</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>function speak(text) {</p>
<p class="p2"><span class="Apple-converted-space">    </span>if (!window.speechSynthesis) {</p>
<p class="p2"><span class="Apple-converted-space">      </span>setTimeout(unlock, 500);</p>
<p class="p2"><span class="Apple-converted-space">      </span>return;</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">    </span>speaking = true;</p>
<p class="p2"><span class="Apple-converted-space">    </span>try {</p>
<p class="p2"><span class="Apple-converted-space">      </span>speechSynthesis.cancel();</p>
<p class="p2"><span class="Apple-converted-space">      </span>setTimeout(() =&gt; {</p>
<p class="p2"><span class="Apple-converted-space">        </span>const u = new SpeechSynthesisUtterance(text);</p>
<p class="p2"><span class="Apple-converted-space">        </span>u.rate = 0.95;</p>
<p class="p2"><span class="Apple-converted-space">        </span>u.pitch = 1.1;</p>
<p class="p2"><span class="Apple-converted-space">        </span>u.volume = 1;</p>
<p class="p2"><span class="Apple-converted-space">        </span>const girl = getGirlVoice();</p>
<p class="p2"><span class="Apple-converted-space">        </span>if (girl) u.voice = girl;</p>
<p class="p2"><span class="Apple-converted-space">        </span>u.onend = unlock;</p>
<p class="p2"><span class="Apple-converted-space">        </span>u.onerror = unlock;</p>
<p class="p2"><span class="Apple-converted-space">        </span>speechSynthesis.speak(u);</p>
<p class="p2"><span class="Apple-converted-space">      </span>}, 50);</p>
<p class="p2"><span class="Apple-converted-space">      </span>setTimeout(unlock, 7000);</p>
<p class="p2"><span class="Apple-converted-space">    </span>} catch (e) {</p>
<p class="p2"><span class="Apple-converted-space">      </span>unlock();</p>
<p class="p2"><span class="Apple-converted-space">    </span>}</p>
<p class="p2"><span class="Apple-converted-space">  </span>}</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>function loadVoices() {</p>
<p class="p2"><span class="Apple-converted-space">    </span>if (window.speechSynthesis) speechSynthesis.getVoices();</p>
<p class="p2"><span class="Apple-converted-space">  </span>}</p>
<p class="p2"><span class="Apple-converted-space">  </span>loadVoices();</p>
<p class="p2"><span class="Apple-converted-space">  </span>if (window.speechSynthesis &amp;&amp; speechSynthesis.onvoiceschanged !== undefined) {</p>
<p class="p2"><span class="Apple-converted-space">    </span>speechSynthesis.onvoiceschanged = loadVoices;</p>
<p class="p2"><span class="Apple-converted-space">  </span>}</p>
<p class="p2"><span class="Apple-converted-space">  </span>setTimeout(loadVoices, 400);</p>
<p class="p2"><span class="Apple-converted-space">  </span>setTimeout(loadVoices, 1200);</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>function spawnFloat(x, y) {</p>
<p class="p2"><span class="Apple-converted-space">    </span>const f = document.createElement('div');</p>
<p class="p2"><span class="Apple-converted-space">    </span>f.className = 'fc-float';</p>
<p class="p2"><span class="Apple-converted-space">    </span>f.textContent = '+1';</p>
<p class="p2"><span class="Apple-converted-space">    </span>f.style.left = x + 'px';</p>
<p class="p2"><span class="Apple-converted-space">    </span>f.style.top = y + 'px';</p>
<p class="p2"><span class="Apple-converted-space">    </span>document.body.appendChild(f);</p>
<p class="p2"><span class="Apple-converted-space">    </span>setTimeout(() =&gt; f.remove(), 700);</p>
<p class="p2"><span class="Apple-converted-space">  </span>}</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">  </span>cookieEl.addEventListener('click', (e) =&gt; {</p>
<p class="p2"><span class="Apple-converted-space">    </span>e.preventDefault();</p>
<p class="p2"><span class="Apple-converted-space">    </span>e.stopPropagation();</p>
<p class="p2"><span class="Apple-converted-space">    </span>if (!canClick || speaking) return;</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">    </span>canClick = false;</p>
<p class="p2"><span class="Apple-converted-space">    </span>cookieEl.classList.add('disabled');</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">    </span>cookies++;</p>
<p class="p2"><span class="Apple-converted-space">    </span>countEl.textContent = cookies + (cookies === 1 ? ' cookie' : ' cookies');</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">    </span>const line = lines[Math.floor(Math.random() * lines.length)];</p>
<p class="p2"><span class="Apple-converted-space">    </span>talkEl.textContent = line;</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">    </span>const rect = cookieEl.getBoundingClientRect();</p>
<p class="p2"><span class="Apple-converted-space">    </span>spawnFloat(rect.left + rect.width / 2 - 12, rect.top + 8);</p>
<p class="p1"><br></p>
<p class="p2"><span class="Apple-converted-space">    </span>speak(line);</p>
<p class="p2"><span class="Apple-converted-space">  </span>});</p>
<p class="p2">})();</p>
</body>
</html>
