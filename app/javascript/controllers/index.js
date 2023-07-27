// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import HelloController from "./hello_controller"

import Dropdown from "./dropdown"
// import Clipboard from 'stimulus-clipboard'
import Audio from "./audio_controller"
import Tabs from "./tabs_controller"
import FooterPlayer from './footer_player_controller'
import Chart from './chart_controller'
import GoogleMaps from './google_maps'
import Scroll from './scroll_controller'
import Upload from './upload_controller'
import select_controller from "./select_controller"
import animate_controller from "./animate_controller"
import removals_controller from "./removals_controller"
import track_player_controller from "./track_player_controller"
import player_controller from "./player_controller"
import editor from "./editor"
import input_submitter from "./input_submitter"
import nested_form_controller from "./nested_form_controller"
import infinite_pagination_controller from "./infinite_pagination_controller"
import modal_controller from "./modal_controller"
import google_maps from "./google_maps"
//import GeoChart from './geo_chart_controller'

// Configure Stimulus development experience
application.debug = true
// window.Stimulus   = application

application.register("dropdown", Dropdown)
application.register("audio", Audio)
application.register("tabs", Tabs)
application.register("player", FooterPlayer)
// application.register("clipboard", Clipboard)
application.register("chart", Chart)
application.register("gmaps", GoogleMaps)
application.register("scroll", Scroll)
application.register("hello", HelloController)
application.register("upload", Upload)
application.register("select", select_controller)
application.register("animate", animate_controller)
application.register("removals", removals_controller)
application.register("trackplayer", track_player_controller)
application.register("player", player_controller)
application.register("editor", editor)
application.register("input-submitter", input_submitter)
application.register("nested-form", nested_form_controller)
application.register("infinite-pagination", infinite_pagination_controller)
application.register("modal", modal_controller)
application.register("gmaps", google_maps)