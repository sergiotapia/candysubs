defmodule CandysubParserTest do
  use ExUnit.Case
  doctest Candysub.Parser

  test "finds the download url from subtitle detail page" do
    download_url = Candysub.Parser.find_download_link(sub_detail_html)
    assert download_url == "https://subscene.com/subtitle/download?mac=FkgoJLUgs5Vc_i-io4xfDFkZAOat0xYOwWwQ6HFdBcGiqLQBmYK4RIDZ0q0OzVJdLf0T-P4ryaUs3hfPtOWxiZxjluooV0GAS61Yd9vHUKG7Q3570odxTVw3miiKKZZQ0"
  end

  test "pull down the first torrent link in the list page" do
    subtitle_detail_url = Candysub.Parser.find_detail_link(list_page_html)
    assert subtitle_detail_url == "https://subscene.com/subtitles/coherence/english/973666"
  end

  def list_page_html do
    """
    <!DOCTYPE html>
    <html lang="en">

    <head>
    	<meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width" />
        <title>Subscene - Coherence.2013.BRRip.XviD.AC3-RARBG subtitle search</title>


    	<!--[if lt IE 9]>
    	<script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    	<![endif]-->
    	<link rel="canonical" href="https://subscene.com/subtitles/release?q=Coherence.2013.BRRip.XviD.AC3-RARBG" />
    	<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Subscene" />
    	<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />


    	<link href="/css?v=MxjIaX5AGMpsm9W5_CQRTQ14wYKtWXXB_rwAyickiC81" rel="stylesheet"/>



    <script src="/js?v=gGSGH6YeGLyiuBi8eaD9RxXpnLe9W0Fp1mILQxc5EYw1" type="text/javascript"></script>


    	<script type="text/javascript" src="https://eas5.emediate.eu/EAS_tag.1.0.js"></script>

    </head>
    <body>

    	<header>
    		<nav id="forum-navigation">
    	<ul>
    		<li>
    			<a href="https://forum.subscene.com/">Forums</a>
    		</li>

    			<li>
    				<a href="/Home/DarkTheme">Dark Theme</a>
    			</li>
    	</ul>
    </nav>
    <nav id="user-navigation">
    	<ul>
    			<li>
    				<a href="https://subscene.com/account/login">Login or Register</a>
    			</li>
    	</ul>
    </nav>

    		<div id="logo">
    			<a href="/"><em>Subscene 3.0 </em></a>
    		</div>

    <div id="search">
    	<div class="filter">
    	<ul>
    (English)

    		<li>
    		<a href="/filter/edit" title="Change search filter">Change filter</a>
    	</li>

    	</ul>

    </div>

    	<form action="/subtitles/release">

    		<input type="text" name="q" id="q" class="text" value="Coherence.2013.BRRip.XviD.AC3-RARBG" />

    		<input type="hidden" name="l" id="l" class="text" value="" />


    		<button type="submit">Subtitle Search</button>


    	</form>
    </div>


    <nav class="main">
    	<ul>
    		<li>
    			<a href="https://subscene.com/browse" class="" >Browse</a>
    		</li>
    		<li>
    			<a href="https://u.subscene.com/upload/" >Upload</a>
    		</li>
    	</ul>
    </nav>
    	</header>
    	<div id="content" class="clearfix">

    		<div class="banner ">




    	<div class="banner">









    			<div class="size728">
    				<div class="jededplace" id="jededplace-3">
    					<script type="text/javascript">
    						(jededplaces = window.jededplaces || []).push(3);
    					</script>
    				</div>
    			</div>



    	</div>


    		</div>
    		<div class="banner-ontop">
    		</div>



    <div class="subtitles byFilm byReleaseName">

    <h1>Subtitle search by release name</h1>


    <div class="box">
    <div class="content">

    	<div class="language-filter" title="Subtitle filter">
    	<span>
    English	</span>




    	<small>
    		<a href="/filter/edit" title="Edit subtitle filter">Edit</a>
    	</small>

    </div>

    	<table>
    	<thead>
    	<tr>
    		<td class="language">
    			Language
    			<span class="release-name">Release Name/Film title</span>
    		</td>
    		<td class="files">
    			Files
    		</td>
    		<td class="ear">
    			<abbr title="Hearing Impaired">H.I.</abbr>
    		</td>
    		<td class="owner">
    			Owner
    		</td>
    		<td class="comment">
    			Comment
    		</td>
    	</tr>
    	</thead>
    	<tbody>


    		<tr>
    			<td class="a1">
    				<a href="/subtitles/coherence/english/973666">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Coherence.2013.HDRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">

    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/798596">
    				freeseatr
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    From DVDR&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/coherence/english/982031">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Coherence 2013 BRrip XviD AC3 MiLLENiUM
    					</span>
    				</a>
    			</td>
    			<td class="a3">

    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/122449">
    				sod
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Luis-subs synced for this version&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/coherence/english/989277">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Coherence.brrip.720p.2013
    					</span>
    				</a>
    			</td>
    			<td class="a3">

    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/576375">
    				hellraios
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Just improved to my liking&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/the-hobbit-the-desolation-of-smaug/english/885051">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						The.Hobbit.The.Desolation.Of.Smaug.2013.Blu-Ray.720p.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/695804">
    				meisam_t72
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    %100 Complete - subtitle by EJSUB and Edited By Meisam_T72&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/coherence/english/973666">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Coherence.2013.480p.HDRip.x264.AC3-FooKaS
    					</span>
    				</a>
    			</td>
    			<td class="a3">

    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/798596">
    				freeseatr
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    From DVDR&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/coherence/english/960965">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Coherence.2013.480p.HDRip.x264.AC3-FooKaS
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/256059">
    				joshua1988
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    synched for this HDRip FooKaS version  -;)&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/axe-giant-the-wrath-of-paul-bunyan/english/1093374">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Axe.Giant.The.Wrath.of.Paul.Bunyan.2013.LIMITED.720p.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">

    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/861362">
    				Fidells3
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Perfectly Sync For All 720p/1080p BluRay Copies... :)&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/empire-state/english/774611">
    					<span class="l r positive-icon">
    						English
    					</span>
    					<span>
    						Empire.State.2013.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/755039">
    				EJSUB
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    &nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/the-colony/english/781772">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						The.Colony.2013.720p.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a41">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Fixed: (Name): --&gt; Name:, &#39;-&#39; Remove in EOL, Bridge Gaps (50 Milliseconds, 1 Line), !!! --&gt; !, Lines Balanced, Hearing Impaired To UpperCase&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/the-colony/english/781772">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						The.Colony.2013.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a41">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Fixed: (Name): --&gt; Name:, &#39;-&#39; Remove in EOL, Bridge Gaps (50 Milliseconds, 1 Line), !!! --&gt; !, Lines Balanced, Hearing Impaired To UpperCase&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/i-spit-on-your-grave-2/english/782397">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						I.Spit.On.Your.Grave.2.2013.UNRATED.720p.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a41">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Colored HI &amp; All found errors corrected&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/forbidden-ground/english/788095">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Forbidden.Ground.2013.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a41">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    COLORED Hearing Impaired, All found errors corrected&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/forbidden-ground/english/788095">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Forbidden.Ground.2013.720p.BRRip.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a41">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    COLORED Hearing Impaired, All found errors corrected&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/the-colony/english/781777">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						The.Colony.2013.BRRip.XviD.AC3.RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Fixed: &#39;-&#39; Remove in EOL, Bridge Gaps (50 Milliseconds, 1 Line), Lines Balanced, !!! --&gt; !. &nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/the-colony/english/781777">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						The.Colony.2013.720p.BRRip.XviD.AC3.RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Fixed: &#39;-&#39; Remove in EOL, Bridge Gaps (50 Milliseconds, 1 Line), Lines Balanced, !!! --&gt; !. &nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/orc-wars/english/794391">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Orc.Wars.2013.720p.BRRip.XviD.AC3.RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/731414">
    				Sang Pangeran
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Added missing lines. Improved and corrected. See details. Enjoy!&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/forbidden-ground/english/788092">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Forbidden.Ground.2013.720p.BRRip.XviD.AC3.RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a41">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    All found errors corrected&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/forbidden-ground/english/788092">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Forbidden.Ground.2013.BRRip.XviD.AC3.RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a41">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    All found errors corrected&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/man-of-steel/english/802813">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Man.Of.Steel.2013.BRRip.720p.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/782673">
    				selvahema
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    perfectly synched ..fixed all errors ..plz rate it&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/orc-wars/english/793851">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Orc.Wars.2013.720p.Brrip.Xvid.Ac3.Rarbg
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Fixed: Unneeded spaces, Bridge small gaps in duration, Lines balances, HTML tags Fixed, Names, OCR, Overlapping, Short display-time, Missing quote(&quot;), Missing period at end of lines. etc...&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/orc-wars/english/793851">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Orc.Wars.2013.Brrip.Xvid.Ac3.Rarbg
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/659433">
    				Ivandrofly
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    Fixed: Unneeded spaces, Bridge small gaps in duration, Lines balances, HTML tags Fixed, Names, OCR, Overlapping, Short display-time, Missing quote(&quot;), Missing period at end of lines. etc...&nbsp;				</div>
    			</td>
    		</tr>

    		<tr>
    			<td class="a1">
    				<a href="/subtitles/syrup/english/811146">
    					<span class="l r neutral-icon">
    						English
    					</span>
    					<span>
    						Syrup.2013.LIMITED.BRRip.720p.XviD.AC3-RARBG
    					</span>
    				</a>
    			</td>
    			<td class="a3">
    				1
    			</td>
    			<td class="a40">
    				&nbsp;
    			</td>
    			<td class="a5">

    			<a href="/u/750275">
    				xxRaZoRxx
    			</a>
    			</td>
    			<td class="a6">
    				<div>
    ™Perfect BluRay&nbsp;				</div>
    			</td>
    		</tr>
    	</tbody>
    	</table>

    	<div class="alternativeSearch">
    		Also try <a href="/subtitles/title?q=Coherence.2013.BRRip.XviD.AC3-RARBG&r=true" rel="nofollow">search subtitles by media title (Film/TV-Serie/Trailer)</a>.
    	</div>

    </div>
    </div>
    </div>

    			<div class="bottom">





    	<div class="banner">












    			<div class="size728">
    					<div class="jededplace" id="jededplace-9">
    						<script type="text/javascript">
    							(jededplaces = window.jededplaces || []).push(9);
    						</script>
    					</div>
    					<div class="jededplace" id="jededplace-17">
    						<script type="text/javascript">
    							(jededplaces = window.jededplaces || []).push(17);
    						</script>
    					</div>
    			</div>
    	</div>



    			</div>
    		</div>

    	<div id="sidebar-left">




    	<div class="banner">








    				<div style='width:160px;'>
    					<div class="jededplace" id="jededplace-4">
    						<script type='text/javascript'>
    							(jededplaces = window.jededplaces || []).push(4);
    						</script>
    					</div>
    				</div>




    	</div>


    	</div>




    <footer>
    	<div>
    		<div class="right">

    		</div>
    		<div class="copyright">
    			<a href="/">
    				&copy; 2005-2016 Subscene <span class="version">(Version 4.0)</span>
    			</a>
    		</div>
    			<nav>
    			<ul>
    				<li>
    					<div class="twitter">
    						<a href="https://twitter.com/subscene_com" class="twitter-follow-button">@subscene_com</a>
    					</div>
    				</li>

    				<li>
    					<a href="/site/legal-information">Legal Information</a>
    				</li>
    				<li>
    					<a href="http://c.subscene.com">Content Verification Program</a>
    				</li>
    				<li>
    					<a href="https://u.subscene.com/site/contact">Contact us</a>
    				</li>
    				<li>
    					<a href="https://jeded.com">Uses Jeded.com Services</a>
    				</li>
    			</ul>
    		</nav>
    	</div>

        <div class="sustain">
            <p>
                <strong>The Planet is ours - where are we going!?</strong>
            </p>
            With the global population soaring towards <strong>9 billion people</strong> by <strong>2050</strong> current levels of <strong>meat</strong> and <strong>dairy consumption</strong> are not sustainable on our limited earth.
            <div>
                <nav>
                    <ul>
                        <li>
                            Watch youtube:
                        </li>
                        <li>
                            <a href="http://youtu.be/jqxENMKaeCU?t=20m38s">Planet Home</a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/watch?v=eH1s9GCqPKo">Planet Ocean</a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/watch?v=O6GimGZz6a8">Why not eat insects?</a>
                        </li>
                        <li>
                            <a href="http://www.cowspiracy.com/">Cowspiracy</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>



    	<script>
    		(function (i, s, o, g, r, a, m) {
    			i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
    				(i[r].q = i[r].q || []).push(arguments)
    			}, i[r].l = 1 * new Date(); a = s.createElement(o),
    			m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    		})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    		ga('create', ('IUIO' + 'OAIO' + '-I3OI' + '4IOO' + 'I07I' + 'IOII' + 'I0I7' + '-OI2O').replace(/i/gi, "").replace(/o/gi, ""), 'subscene.com');
    		ga('send', 'pageview');

    	</script>
    	<script type="text/javascript">

    		if (top.location != location) {
    			top.location.href = document.location.href;
    		}


    	</script>



    </footer>







    	<script async type="text/javascript" src="https://ads.jeded.com/ads/1.js"></script>

    </body>
    </html>
    """
  end

  def sub_detail_html do
    """
    <!DOCTYPE html>
    <html lang="en">

    <head>
    	<meta charset="utf-8" />
    	<meta name="viewport" content="width=device-width" />
        <title>Subscene - Coherence English subtitle</title>

    	<meta name="description" content="English subtitle for Coherence">


    	<!--[if lt IE 9]>
    	<script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    	<![endif]-->
    	<link rel="canonical" href="https://subscene.com/subtitles/coherence/english/973666" />
    	<link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Subscene" />
    	<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />


    	<link href="/css?v=MxjIaX5AGMpsm9W5_CQRTQ14wYKtWXXB_rwAyickiC81" rel="stylesheet"/>



    <script src="/js?v=gGSGH6YeGLyiuBi8eaD9RxXpnLe9W0Fp1mILQxc5EYw1" type="text/javascript"></script>


    	<script type="text/javascript" src="https://eas5.emediate.eu/EAS_tag.1.0.js"></script>

    </head>
    <body>

    	<header>
    		<nav id="forum-navigation">
    	<ul>
    		<li>
    			<a href="https://forum.subscene.com/">Forums</a>
    		</li>

    			<li>
    				<a href="/Home/DarkTheme">Dark Theme</a>
    			</li>
    	</ul>
    </nav>
    <nav id="user-navigation">
    	<ul>
    			<li>
    				<a href="https://subscene.com/account/login">Login or Register</a>
    			</li>
    	</ul>
    </nav>

    		<div id="logo">
    			<a href="/"><em>Subscene 3.0 </em></a>
    		</div>

    <div id="search">
    	<div class="filter">
    	<ul>
    (English)

    		<li>
    		<a href="/filter/edit" title="Change search filter">Change filter</a>
    	</li>

    	</ul>

    </div>

    	<form action="/subtitles/title">

    		<input type="text" name="q" id="q" class="text" />

    		<input type="hidden" name="l" id="l" class="text" value="" />


    		<button type="submit">Subtitle Search</button>


    	</form>
    </div>


    <nav class="main">
    	<ul>
    		<li>
    			<a href="https://subscene.com/browse" class="" >Browse</a>
    		</li>
    		<li>
    			<a href="https://u.subscene.com/upload/coherence" >Upload</a>
    		</li>
    	</ul>
    </nav>
    	</header>
    	<div id="content" class="clearfix">

    		<div class="banner ">




    	<div class="banner">









    			<div class="size728">
    				<div class="jededplace" id="jededplace-3">
    					<script type="text/javascript">
    						(jededplaces = window.jededplaces || []).push(3);
    					</script>
    				</div>
    			</div>



    	</div>


    		</div>
    		<div class="banner-ontop">
    		</div>





    <script type="text/javascript">


        var model = null;
    	var downloadButtonText = "";
    	function DownloadSubtitle(downloadLink)
    	{
    		var downloading = document.getElementById('downloading');
    		var retry = document.getElementById('retry-download');
    		if(retry)
    			retry.style.display = 'none';

    		downloading.style.display = '';

    		if (downloadButtonText == "")
    			downloadButtonText = downloadLink.innerHTML;

    		downloadLink.innerHTML = downloadButtonText + "...";

    		if(model != null)
    			model.Show("True");

    	};

    	function CloseDownloading() {
    		var downloading = document.getElementById('downloading');
    		var downloadButton = document.getElementById('downloadButton');

    		if (downloading.style.display == '') {
    			downloading.style.display = 'none';
    			downloadButton.innerHTML = downloadButtonText;
    		}
    	};

    	function ToggleComments() {
    		var show = Toggle('commentsContainer');
    		CloseDownloading();

    		if (show != undefined)
    			Set_Cookie("ShowSubtitleComments", show ? "false" : "true");
    	};
    	function TogglePreview() {
    		var show = Toggle('preview');
    		CloseDownloading();

    		if (show != undefined)
    			Set_Cookie("ShowSubtitlePreview", show ? "false" : "true");
    	};
    	function ToggleDetails() {
    		var show = Toggle('details');
    		CloseDownloading();

    		if (show != undefined)
    			Set_Cookie("ShowSubtitleDetails", show ? "false" : "true");
    	};
    	function Toggle(name) {
    		var el = document.getElementById(name);

    		if (el.style.display == '')
    			el.style.display = 'none';
    		else
    			el.style.display = '';

    		return el.style.display;
    	};

    	function SubtitleViewModel()
    	{
    	    this.ratingService = new ratingService("https://papi.subscene.com/");
    		var self = this;
    		self.SubtitleId = 973666;
    		self.Rating = ko.observable(10);
    		self.RatingCssName = ko.observable(null); // Not used on index page. Do not delete.
    		self.UserRating = ko.observable();
    		self.UserRatingDisplay = ko.observable('');
    		self.Show = ko.observable('False');

    		self.Rate = function (rating) {
    			this.ratingService.AddRating(self, rating);
    		};
    		self.Undo = function () {
    			this.ratingService.UndoRating(self);
    		};
    		self.ErrorMessage = ko.observable(null);
    	};



    </script>



    <div class="subtitle" itemscope itemtype="http://schema.org/Movie/Subtitle">

        <div class="bread">

            <a href="https://subscene.com/subtitles/coherence" title="English Coherence subtitles">&laquo; back to subtitle list </a>
        </div>


        <div class="box clearfix">
            <div class="top right">


    			<div class="banner-ontop">




    	<div class="banner">



    			<div class="size250">
    				<div class="jededplace" id="jededplace-7">
    					<script type="text/javascript">
    						(jededplaces = window.jededplaces || []).push(7);
    					</script>
    				</div>
    			</div>









    	</div>


    			</div>

    				<div class="banner-ontop">




    	<div class="banner">




    			<div class="size250">
    				<div class="jededplace" id="jededplace-8">
    					<script type="text/javascript">
    						(jededplaces = window.jededplaces || []).push(8);
    					</script>
    				</div>
    			</div>








    	</div>


    				</div>
    			</div>
            <div class="top left">

                <div class="poster">
                        <a href="https://i.jeded.com/i/coherence.30459.jpg" target="_blank">
                            <img src="https://i.jeded.com/i/coherence.154-30459.jpg" alt="Poster" />
                        </a>
                </div>

                <div class="header">
                    <h1>
                        <span itemprop="name">
                            Coherence
                        </span>

                            <a target="_blank" class="imdb" href="http://www.imdb.com/title/tt2866360">Imdb</a>
                                        </h1>
                    <ul>
                                <li class="release">
                                    <strong>
                                        Release info:
                                    </strong>
                                            <div>
                                                Coherence 2013 HDRip x264 Mp3-CPG
                                            </div>
                                            <div>
                                                Coherence.2013.480p.HDRip.x264.AC3-FooKaS
                                            </div>
                                            <div>
                                                Coherence 2013 HDRip x264 AAC-Boy Better Know
                                            </div>
                                            <div>
                                                Coherence.2013.HDRip.XviD.AC3-RARBG
                                            </div>
                                            <div>
                                                Coherence.2013.HDRip.480p.Ganool
                                            </div>
                                </li>

                        <li class="author">
                                <div style="font-size:10px; padding-bottom:2px;">A commentary by </div>
                                <a href="/u/798596">
                                    freeseatr

    	<span class="rating-bar" title="Combined subtitle rating: 9">
    			<span class="good"></span>
    			<span class="good"></span>
    			<span class="good"></span>
    			<span class="good"></span>
    			<span class="good"></span>
    			<span class="good"></span>
    			<span class="good"></span>
    			<span class="good"></span>
    			<span class="good"></span>
    					<span class="neutral"></span>
    	</span>

                                </a>
                        </li>
                        <li class="comment-wrapper">
                            <div class="comment">
    From DVDR                        </div>
                            <nav class="comment-sub">
                                <ul>
                                    <li>
                                        <a href="javascript:ToggleDetails();" rel="nofollow">Subtitle details </a>
                                    </li>
                                        <li>
                                            <a href="javascript:TogglePreview();" rel="nofollow">Preview</a>
                                        </li>
    								<li>
    									<a href="https://u.subscene.com/comments/add/973666" rel="nofollow">Add comment</a>
    								</li>
                                    <li>
                                        <a href="javascript:Embed('flagSubtitleContainer','https://subscene.com/flag/0/973666');" rel="nofollow">Flag</a>
                                    </li>
                                </ul>
                            </nav>
                        </li>
                            <li class="clearfix">

                                                                <a href="/subtitles/coherence/english/973666/ratings">
                                        <div class="rating positive hint hint--left" data-hint="By 6 users">

                                            <span>10</span>
                                        </div>
                                    </a>
                                <div class="download">

                                    <a href="/subtitle/download?mac=FkgoJLUgs5Vc_i-io4xfDFkZAOat0xYOwWwQ6HFdBcGiqLQBmYK4RIDZ0q0OzVJdLf0T-P4ryaUs3hfPtOWxiZxjluooV0GAS61Yd9vHUKG7Q3570odxTVw3miiKKZZQ0" rel="nofollow" onclick="DownloadSubtitle(this)" id="downloadButton" class="button positive">
                                        Download English Subtitle

                                                                        </a>


                                </div>




                            </li>



                    </ul>

            </div>

    			<div class="details">

    				<div class="window" style='display: none' id='downloading'>
    					<div class="close">
    						<a href="javascript:CloseDownloading();" rel="nofollow"></a>
    					</div>
    					<h3>
    						Subtitle downloading...
    					</h3>
    					<div id="zergnet-widget-43083"></div>
    					<script language="javascript" type="text/javascript">
    					(function() {
    						var zergnet = document.createElement('script');
    						zergnet.type = 'text/javascript'; zergnet.async = true;
    						zergnet.src = 'https://www.zergnet.com/zerg.js?id=43083';
    						var znscr = document.getElementsByTagName('script')[0];
    						znscr.parentNode.insertBefore(zergnet, znscr);
    					})();
    					</script>
    				</div>


    					<div class="window" style='display:none;' id='preview'>
    						<div class="close">
    							<a href="javascript:TogglePreview();" rel="nofollow"></a>
    						</div>
    						<h3>Subtitle preview:</h3>
    						<p>
    							1<br />00:00:21,564 --&gt; 00:00:25,432<br />I know, it was good. It&#39;s good.<br /><br />2<br />00:00:28,112 --&gt; 00:00:31,315<br />Getting off at the freeway.<br /><br />3<br />00:00:31,657 --&gt; 00:00:35,786<br />Yeah? Did Hugh pick you up<br />at the office, or...<br /><br />4<br />00:00:35,828 --&gt; 00:00:40,623<br />Yeah, he was coming in from<br />Oakland, late of course...<br /><br />5<br />00:00:40,624 --&gt; 00:00:45,962<br />and then he took me to<br />some lawyer bar.<br /><br />6<br />
    						</p>
    					</div>				<div class="window" style='display:none;' id='details'>
    					<div class="close">
    						<a href="javascript:ToggleDetails();" rel="nofollow"></a>
    					</div>
    					<h3>Subtitle details:</h3>
    					<ul>
    						<li>
    							<strong>Online:</strong>
    							9/2/2014 10:53 PM
    							<strong>
    								&nbsp;
    							</strong>
    						</li>
    						<li>
    							<strong>Hearing Impaired:</strong>
    							No
    						</li>
    						<li>
    							<strong>Foreign parts:</strong>
    No						</li>
    						<li>
    							<strong>Framerate:</strong>
    							23.976
    						</li>
    						<li>
    							<strong>Files:</strong>
    							1 (44,951
    							bytes)
    						</li>
    						<li>
    							<strong>Production type:</strong>
    							From retail
    						</li>
    						<li>
    							<strong>Release type:</strong>
    							Web
    						</li>


    						<li>
    							---------------------------------------
    						</li>
    							<li itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
    								<strong>Rated:</strong>
    								<span itemprop="ratingValue">10</span>/<span itemprop="bestRating">10</span> from
    								<a href="/subtitles/coherence/english/973666/ratings" title="View Ratings">
    									<span itemprop="ratingCount">6</span> users
    								</a>
    							</li>
    								<li>
    									<strong>Voted as Good by:</strong>
    									6 users
    								</li>
    						<li>
    							<strong>Downloads:</strong>
    							6,222
    						</li>
    					</ul>
    				</div>

    			<div class="flagContainer" id="flagSubtitleContainer_Loading" style="display:none;">
    				<div class="window">
    					<h3>
    						Loading...
    					</h3>
    				</div>
    			</div>
    			<iframe class="flagContainer" id="flagSubtitleContainer" style="display:none;"></iframe>





    			</div>


    		</div>
    </div>

    <div class="clearfix">
    </div>



    			<div class="bottom">





    	<div class="banner">












    			<div class="size728">
    					<div class="jededplace" id="jededplace-9">
    						<script type="text/javascript">
    							(jededplaces = window.jededplaces || []).push(9);
    						</script>
    					</div>
    					<div class="jededplace" id="jededplace-17">
    						<script type="text/javascript">
    							(jededplaces = window.jededplaces || []).push(17);
    						</script>
    					</div>
    			</div>
    	</div>



    			</div>
    		</div>

    	<div id="sidebar-left">




    	<div class="banner">








    				<div style='width:160px;'>
    					<div class="jededplace" id="jededplace-4">
    						<script type='text/javascript'>
    							(jededplaces = window.jededplaces || []).push(4);
    						</script>
    					</div>
    				</div>




    	</div>


    	</div>




    <footer>
    	<div>
    		<div class="right">

    		</div>
    		<div class="copyright">
    			<a href="/">
    				&copy; 2005-2016 Subscene <span class="version">(Version 4.0)</span>
    			</a>
    		</div>
    			<nav>
    			<ul>
    				<li>
    					<div class="twitter">
    						<a href="https://twitter.com/subscene_com" class="twitter-follow-button">@subscene_com</a>
    					</div>
    				</li>

    				<li>
    					<a href="/site/legal-information">Legal Information</a>
    				</li>
    				<li>
    					<a href="http://c.subscene.com">Content Verification Program</a>
    				</li>
    				<li>
    					<a href="https://u.subscene.com/site/contact">Contact us</a>
    				</li>
    				<li>
    					<a href="https://jeded.com">Uses Jeded.com Services</a>
    				</li>
    			</ul>
    		</nav>
    	</div>

        <div class="sustain">
            <p>
                <strong>The Planet is ours - where are we going!?</strong>
            </p>
            With the global population soaring towards <strong>9 billion people</strong> by <strong>2050</strong> current levels of <strong>meat</strong> and <strong>dairy consumption</strong> are not sustainable on our limited earth.
            <div>
                <nav>
                    <ul>
                        <li>
                            Watch youtube:
                        </li>
                        <li>
                            <a href="http://youtu.be/jqxENMKaeCU?t=20m38s">Planet Home</a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/watch?v=eH1s9GCqPKo">Planet Ocean</a>
                        </li>
                        <li>
                            <a href="https://www.youtube.com/watch?v=O6GimGZz6a8">Why not eat insects?</a>
                        </li>
                        <li>
                            <a href="http://www.cowspiracy.com/">Cowspiracy</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>



    	<script>
    		(function (i, s, o, g, r, a, m) {
    			i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
    				(i[r].q = i[r].q || []).push(arguments)
    			}, i[r].l = 1 * new Date(); a = s.createElement(o),
    			m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    		})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    		ga('create', ('IUIO' + 'OAIO' + '-I3OI' + '4IOO' + 'I07I' + 'IOII' + 'I0I7' + '-OI2O').replace(/i/gi, "").replace(/o/gi, ""), 'subscene.com');
    		ga('send', 'pageview');

    	</script>
    	<script type="text/javascript">

    		if (top.location != location) {
    			top.location.href = document.location.href;
    		}


    	</script>



    </footer>







    	<script async type="text/javascript" src="https://ads.jeded.com/ads/1.js"></script>

    </body>
    </html>
    """
  end
end
