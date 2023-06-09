﻿<%@ Page Title="Home Page" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VehicleProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="b-slider"> 
			<div id="carousel" class="slide carousel carousel-fade">
				<div class="carousel-inner">
					<div class="item active">
						<img src="media/main-slider/4.jpg" alt="sliderImg" />
						<div class="container">
							<div class="carousel-caption b-slider__info">
								<h3>Register your car</h3>
								<h2>MercedesBenz <br/>CLS63 AMG</h2>
								<p>Model 2015 </p>
								<a class="btn m-btn" href="detail.html">SignIn<span class="fa fa-angle-right"></span></a>
							</div>
						</div>
					</div>
					<div class="item">
						<img src="media/main-slider/2.jpg" alt="sliderImg" />
						<div class="container">
							<div class="carousel-caption b-slider__info">
								<h3>Register your car</h3>
								<h2>MercedesBenz <br/>CLS63 AMG</h2>
								<p>Model 2015</p>
								<a class="btn m-btn" href="detail.html">SignIn<span class="fa fa-angle-right"></span></a>
							</div>
						</div>
					</div>
				</div>
				<a class="carousel-control right" href="#carousel" data-slide="next">
					<span class="fa fa-angle-right m-control-right"></span>
				</a>
				<a class="carousel-control left" href="#carousel" data-slide="prev">
					<span class="fa fa-angle-left m-control-left"></span>
				</a>
			</div>
		</section><!--b-slider-->
	
		<section class="b-world">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-xs-12">
						<div class="b-world__item wow zoomInLeft" data-wow-delay="0.3s">
							<img class="img-responsive" src="media/370x200/wolks.jpg" alt="wolks" />
							<div class="b-world__item-val">
								<span class="b-world__item-val-title">WE OFFER</span>
							</div>
							<h2>Low Prices, No Haggling</h2>
							<p>Curabitur libero. Donec facilisis velit eu est. Phasellus cons quat. Aenean vitae quam. Vivamus et nunc. Nunc consequ
								sem velde metus imperdiet lacinia.</p>
						</div>
					</div>
					<div class="col-sm-4 col-xs-12">
						<div class="b-world__item wow zoomInUp" data-wow-delay="0.3s">
							<img class="img-responsive"  src="media/370x200/mazda.jpg" alt="mazda" />
							<div class="b-world__item-val">
								<span class="b-world__item-val-title">WE ARE THE</span>
							</div>
							<h2>Largest Car Dealership</h2>
							<p>Curabitur libero. Donec facilisis velit eu est. Phasellus cons quat. Aenean vitae quam. Vivamus et nunc. Nunc consequ
								sem velde metus imp         erdiet lacinia.</p>
						</div>
					</div>
					<div class="col-sm-4 col-xs-12">
						<div class="b-world__item wow zoomInRight" data-wow-delay="0.3s">
							<img class="img-responsive"  src="media/370x200/chevrolet.jpg" alt="chevrolet" />
							<div class="b-world__item-val">
								<span class="b-world__item-val-title">OUR CUSTOMERS GET</span>
							</div>
							<h2>Multipoint Safety Check</h2>
							<p>Curabitur libero. Donec facilisis velit eu est. Phasellus cons quat. Aenean vitae quam. Vivamus et nunc. Nunc consequ
								sem velde metus imp         erdiet lacinia.</p>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-world-->

		<section class="b-featured">
			<div class="container">
				<h2 class="s-title wow zoomInUp" data-wow-delay="0.3s">Featured Vehicles</h2>
				<div id="carousel-small" class="owl-carousel enable-owl-carousel" data-items="4" data-navigation="true" data-auto-play="true" data-stop-on-hover="true" data-items-desktop="4" data-items-desktop-small="4" data-items-tablet="3" data-items-tablet-small="2">
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/mers.jpg" alt="mers" />
								<span class="m-premium">Premium</span>
							</a>
							<div class="b-featured__item-price">
								$184,900
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">MERCEDES-AMG GT / GT S</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>35,000 KM</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2014</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/audi.jpg" alt="audi" />
							</a>
							<div class="b-featured__item-price">
								$95,900
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">AUDI R8 SPYDER V-8</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>0.00 KM</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2015</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/aston.jpg" alt="aston" />
								<span class="m-leasing">LEASING AVAILABLE</span>
							</a>
							<div class="b-featured__item-price">
								$101,025
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">ASTON MARTIN VANTAGE</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>35,000 KM</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2014</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/jaguar.jpg" alt="jaguar" />
							</a>
							<div class="b-featured__item-price">
								$130,825
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">JAGUAR F-TYPE R</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>0.00</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2015</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/mers.jpg" alt="mers" />
								<span class="m-premium">Premium</span>
							</a>
							<div class="b-featured__item-price">
								$184,900
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">MERCEDES-AMG GT / GT S</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>35,000 KM</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2014</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/audi.jpg" alt="audi" />
							</a>
							<div class="b-featured__item-price">
								$95,900
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">AUDI R8 SPYDER V-8</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>0.00 KM</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2015</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/aston.jpg" alt="aston" />
								<span class="m-leasing">LEASING AVAILABLE</span>
							</a>
							<div class="b-featured__item-price">
								$101,025
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">ASTON MARTIN VANTAGE</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>35,000 KM</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2014</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
					<div>
						<div class="b-featured__item wow rotateIn" data-wow-delay="0.3s">
							<a href="detail.html">
								<img src="media/186x113/jaguar.jpg" alt="jaguar" />
							</a>
							<div class="b-featured__item-price">
								$130,825
							</div>
							<div class="clearfix"></div>
							<h5><a href="detail.html">JAGUAR F-TYPE R</a></h5>
							<div class="b-featured__item-count"><span class="fa fa-tachometer"></span>0.00</div>
							<div class="b-featured__item-links">
								<a href="#">Used</a>
								<a href="#">2015</a>
								<a href="#">Manual</a>
								<a href="#">Orange</a>
								<a href="#">Petrol</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-featured-->

		<section class="b-welcome">
			<div class="container">
				<div class="row">
					<div class="b-welcome__services">
						<div class="col-md-3 col-xs-12">
							<div class="row">
								<div class="col-xs-12 m-padding">
									<div class="b-welcome__services-auto wow zoomInLeft" data-wow-delay="0.3s">
										<div class="b-welcome__services-img m-auto">
											<span class="fa fa-cab"></span>
										</div>
										<h3>AUTO Rewards</h3>
									</div>
								</div>
								<div class="col-xs-12 text-right visible-md visible-lg">
									<div class="m-circle wow slideInRight" data-wow-delay="0.3s">
										<span class="b-welcome__services-circle"></span>
									</div>
								</div>
								<div class="col-xs-12 m-padding">
									<div class="b-welcome__services-buying wow zoomInLeft" data-wow-delay="0.3s">
										<div class="b-welcome__services-img m-buying">
											<span class="fa fa-book"></span>
										</div>
										<h3>Buying guide</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-md-6">
						<div class="b-welcome__text wow zoomInUp" data-wow-delay="0.3s">
							<h2>JAMAICA'S LEADING CAR HANDLER</h2>
							<h3>WELCOME TO AUTOCLUB</h3>
							<p>Curabitur libero. Donec facilisis velit eudsl est. Phasellus consequat. Aenean vita quam. Vivamus et nunc. Nunc consequat sem velde metus imperdiet lacinia. Dui estter neque molestie necd dignissim ac hendrerit quis purus. Etiam sit amet vec convallis massa scelerisque mattis. Sed placerat leo nec.</p>
							<p>Ipsum midne ultrices magn eu tempor quam dolor eustrl sem. Donec quis dolel Donec pede quam placerat alterl tristique faucibus posuere lobortis.</p>
							<ul>
								<li><span class="fa fa-check"></span>Donec facilisis velit eu est phasellus consequat </li>
								<li><span class="fa fa-check"></span>Aenean vitae quam. Vivamus et nunc nunc consequat</li>
								<li><span class="fa fa-check"></span>Sem vel metus imperdiet lacinia enean </li>
								<li><span class="fa fa-check"></span>Dapibus aliquam augue fusce eleifend quisque tels</li>
							</ul>
						</div>
					</div>
					<div class="b-welcome__services">
						<div class="col-md-3 col-xs-12">
							<div class="row">
								<div class="col-xs-12 m-padding">
									<div class="b-welcome__services-trade wow zoomInRight" data-wow-delay="0.3s">
										<div class="b-welcome__services-img m-trade">
											<span class="fa fa-male"></span>
										</div>
										<h3>Trade-Ins</h3>
									</div>
								</div>
								<div class="col-xs-12 text-left visible-md visible-lg">
									<div class="m-circle pull-right wow slideInLeft" data-wow-delay="0.3s">
										<span class="b-welcome__services-circle m-left"></span>
									</div>
								</div>
								<div class="col-xs-12 m-padding">
									<div class="b-welcome__services-support wow zoomInRight" data-wow-delay="0.3s">
										<div class="b-welcome__services-img m-support">
											<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="45px" height="45px" viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve">
												<g>
													<path d="M257.938,336.072c0,17.355-14.068,31.424-31.423,31.424c-17.354,0-31.422-14.068-31.422-31.424
														c0-17.354,14.068-31.423,31.422-31.423C243.87,304.65,257.938,318.719,257.938,336.072z M385.485,304.65
														c-17.354,0-31.423,14.068-31.423,31.424c0,17.354,14.069,31.422,31.423,31.422c17.354,0,31.424-14.068,31.424-31.422
														C416.908,318.719,402.84,304.65,385.485,304.65z M612,318.557v59.719c0,29.982-24.305,54.287-54.288,54.287h-39.394
														C479.283,540.947,379.604,606.412,306,606.412s-173.283-65.465-212.318-173.85H54.288C24.305,432.562,0,408.258,0,378.275v-59.719
														c0-20.631,11.511-38.573,28.46-47.758c0.569-84.785,25.28-151.002,73.553-196.779C149.895,28.613,218.526,5.588,306,5.588
														c87.474,0,156.105,23.025,203.987,68.43c48.272,45.777,72.982,111.995,73.553,196.779C600.489,279.983,612,297.925,612,318.557z
														M497.099,336.271c0-13.969-0.715-27.094-1.771-39.812c-24.093-22.043-67.832-38.769-123.033-44.984
														c7.248,8.15,13.509,18.871,17.306,32.983c-33.812-26.637-100.181-20.297-150.382-79.905c-2.878-3.329-5.367-6.51-7.519-9.417
														c-0.025-0.035-0.053-0.062-0.078-0.096l0.006,0.002c-8.931-12.078-11.976-19.262-12.146-11.31
														c-1.473,68.513-50.034,121.925-103.958,129.46c-0.341,7.535-0.62,15.143-0.62,23.08c0,28.959,4.729,55.352,12.769,79.137
														c30.29,36.537,80.312,46.854,124.586,49.59c8.219-13.076,26.66-22.205,48.136-22.205c29.117,0,52.72,16.754,52.72,37.424
														c0,20.668-23.604,37.422-52.72,37.422c-22.397,0-41.483-9.93-49.122-23.912c-30.943-1.799-64.959-7.074-95.276-21.391
														C198.631,535.18,264.725,568.41,306,568.41C370.859,568.41,497.099,486.475,497.099,336.271z M550.855,264.269
														C547.4,116.318,462.951,38.162,306,38.162S64.601,116.318,61.145,264.269h20.887c7.637-49.867,23.778-90.878,48.285-122.412
														C169.37,91.609,228.478,66.13,306,66.13c77.522,0,136.63,25.479,175.685,75.727c24.505,31.533,40.647,72.545,48.284,122.412
														H550.855L550.855,264.269z"/>
												</g>
											</svg>
										</div>
										<h3>24/7 support</h3>
									</div>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-welcome-->

		<section class="b-homeAuto">
			<div class="container">
				<div class="row">
					<div class="col-xs-6">
						<div class="b-homeAuto__latest">
							<h5 class="s-titleBg wow zoomInLeft" data-wow-delay="0.3s">GIVING OUR CUSTOMERS BEST DEALS</h5><br />
							<h2 class="s-title wow zoomInLeft" data-wow-delay="0.3s">LATEST VEHICLES ON REGISTERED</h2>
							<div class="b-auto__main">
								<div class="row">
									<div class="col-md-6 col-sm-12">
										<div class="b-auto__main-item wow zoomInUp" data-wow-delay="0.3s">
											<img class="img-responsive center-block"  src="media/270x150/nissanGT.jpg" alt="nissan" />
											<div class="b-world__item-val">
												<span class="b-world__item-val-title">REGISTERED <span>2022</span></span>
											</div>
											<h2><a href="detail.html">Nissan GT-R NISMO</a></h2>
											<div class="b-auto__main-item-info">
												<span class="m-price">
													$10,857
												</span>
												<span class="m-number">
													<span class="fa fa-tachometer"></span>35,000 KM
												</span>
											</div>
											<div class="b-featured__item-links m-auto">
												<a href="#">Used</a>
												<a href="#">2014</a>
												<a href="#">Manual</a>
												<a href="#">Orange</a>
												<a href="#">Petrol</a>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-12">
										<div class="b-auto__main-item wow zoomInUp" data-wow-delay="0.3s">
											<img class="img-responsive center-block"  src="media/270x150/bmw.jpg" alt="bmw" />
											<div class="b-world__item-val">
												<span class="b-world__item-val-title">REGISTERED <span>2022</span></span>
											</div>
											<h2><a href="detail.html">BMW 650i Coupe</a></h2>
											<div class="b-auto__main-item-info">
												<span class="m-price">
													$95,900
												</span>
												<span class="m-number">
													<span class="fa fa-tachometer"></span>12,000 KM
												</span>
											</div>
											<div class="b-featured__item-links m-auto">
												<a href="#">Used</a>
												<a href="#">2014</a>
												<a href="#">Manual</a>
												<a href="#">Orange</a>
												<a href="#">Petrol</a>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-12">
										<div class="b-auto__main-item wow zoomInUp" data-wow-delay="0.3s">
											<img class="img-responsive center-block"  src="media/270x150/LandRover.jpg" alt="LandRover" />
											<div class="b-world__item-val">
												<span class="b-world__item-val-title">REGISTERED <span>2022</span></span>
											</div>
											<h2><a href="detail.html">Land Rover Range Rover</a></h2>
											<div class="b-auto__main-item-info">
												<span class="m-price">
													$44,380
												</span>
												<span class="m-number">
													<span class="fa fa-tachometer"></span>35,000 KM
												</span>
											</div>
											<div class="b-featured__item-links m-auto">
												<a href="#">Used</a>
												<a href="#">2014</a>
												<a href="#">Manual</a>
												<a href="#">Orange</a>
												<a href="#">Petrol</a>
											</div>
										</div>
									</div>
									<div class="col-md-6 col-sm-12">
										<div class="b-auto__main-item wow zoomInUp" data-wow-delay="0.3s">
											<img class="img-responsive center-block"  src="media/270x150/corvette.jpg" alt="corvette" />
											<div class="b-world__item-val">
												<span class="b-world__item-val-title">REGISTERED <span>2022</span></span>
											</div>
											<h2><a href="detail.html">Chevrolet Corvette Z06</a></h2>
											<div class="b-auto__main-item-info">
												<span class="m-price">
													$95,900
												</span>
												<span class="m-number">
													<span class="fa fa-tachometer"></span>12,000 KM
												</span>
											</div>
											<div class="b-featured__item-links m-auto">
												<a href="#">Used</a>
												<a href="#">2014</a>
												<a href="#">Manual</a>
												<a href="#">Orange</a>
												<a href="#">Petrol</a>
											</div>
										</div>
									</div> 
								</div>
							</div>          
						</div>
					</div>
					<div class="col-xs-6">
						<div class="b-homeAuto__world">
							<h5 class="s-titleBg wow zoomInRight" data-wow-delay="0.3s">EVERYTHING YOU NEED TO KNOW</h5><br />
							<h2 class="s-title wow zoomInRight" data-wow-delay="0.3s">THE WORLD OF AUTOS</h2>
							<div class="b-homeAuto__world-item wow zoomInUp" data-wow-delay="0.3s">
								<div class="row">
									<div class="col-sm-7 col-xs-12">
										<div class="b-homeAuto__world-item-info">
											<h2>
												<a href="article.html">2016 Mazda CX-3
													Mazda's new mini-ute drives nearly<br/>
													as sharp as it looks.
												</a>
											</h2>
											<div class="b-world__item-val">
												<div class="b-world__item-val-circles">
													<span></span>
													<span></span>
													<span></span>
													<span></span>
													<span class="m-empty"></span>
												</div>
												<span class="b-world__item-num">4.1</span>
											</div>
										</div>
									</div>
									<div class="col-sm-5 col-xs-12">
										<img src="media/222x150/mazda2.jpg" class="img-responsive center-block" alt="mazda" />
									</div>
								</div>
								<div class="b-homeAuto__world-item-text">
									<span>25 MAY 2015</span>
									<p>Curabitur libero. Donec facilisis velit eu est. Phasellus cons quat. Aenean vitae quam mus
										et nunc. Nunc conseq sem velde metus imperdiet lacinia. Aenean vulputate. Donec vene natis leo curabitur at neque ut sapien fusce cursus dapibus ligula</p>
								</div>
							</div>
							<div class="b-homeAuto__world-item wow zoomInUp" data-wow-delay="0.3s">
								<div class="row">
									<div class="col-xs-12 col-sm-7">
										<div class="b-homeAuto__world-item-info">
											<h2>
												<a href="article.html"> 2015 Chevrolet Corvette Z06 vs. 
													2015 Nissan GT-R NISMO, 2
													014 Porsche 911 Turbo S
												</a>
											</h2>
											<div class="b-world__item-val">
												<div class="b-world__item-val-circles">
													<span></span>
													<span></span>
													<span></span>
													<span></span>
													<span class="m-empty"></span>
												</div>
												<span class="b-world__item-num">4.1</span>
											</div>
										</div>
									</div>
									<div class="col-sm-5 col-xs-12">
										<img src="media/222x150/bmw2.jpg" alt="bmw" class="img-responsive center-block" />
									</div>
								</div>
								<div class="b-homeAuto__world-item-text">
									<span>25 MAY 2015</span>
									<p>Curabitur libero. Donec facilisis velit eu est. Phasellus cons quat. Aenean vitae quam mus
										et nunc. Nunc conseq sem velde metus imperdiet lacinia. Aenean vulputate. Donec vene natis leo curabitur at neque ut sapien fusce cursus dapibus ligula</p>
								</div>
							</div>
							<a href="blog.html" class="btn m-btn wow zoomInUp" data-wow-delay="0.3s">VISIT OUR BLOG<span class="fa fa-angle-right"></span></a>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-homeAuto-->

		<section class="b-count">
			<div class="container">
				<div class="row">
					<div class="col-md-11 col-xs-12 percent-blocks m-main" data-waypoint-scroll="true">
						<div class="row">
							<div class="col-sm-3 col-xs-6">
								<div class="b-count__item">
									<div class="b-count__item-circle">
										<span class="fa fa-car"></span>
									</div>
									<div class="chart" data-percent="5000">
										<h2  class="percent">5000</h2>
									</div>
									<h5>vehicles in stock</h5>
								</div>
							</div>
							<div class="col-sm-3 col-xs-6">
								<div class="b-count__item">
									<div class="b-count__item-circle">
										<span class="fa fa-users"></span>
									</div>
									<div class="chart" data-percent="3100">
										<h2  class="percent">3100</h2>
									</div>
									<h5>HAPPY CUSTOMER REVIEWS</h5>
								</div>
							</div>
							<div class="col-sm-3 col-xs-6">
								<div class="b-count__item">
									<div class="b-count__item-circle">
										<span class="fa fa-building-o"></span>
									</div>
									<div class="chart" data-percent="500">
										<h2  class="percent">500</h2>
									</div>
									<h5>DEALER BRANCHES</h5>
								</div>
							</div>
							<div class="col-sm-3 col-xs-6">
								<div class="b-count__item j-lastHome">
									<div class="b-count__item-circle">
										<span class="fa fa-suitcase"></span>
									</div>
									<div class="chart" data-percent="54">
										<h2  class="percent">54</h2>
									</div>
									<h5>FREE PARTS GIVEN</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-count-->

		<section class="b-homeReviews">
			<div class="container">
				<h1 class="s-title wow zoomInUp" data-wow-delay="0.3s">WHAT CUSTOMERS SAYING</h1>
				<div id="carousel-small-revHome" class="owl-carousel enable-owl-carousel" data-items="2" data-navigation="true" data-auto-play="true" data-stop-on-hover="true" data-items-desktop="2" data-items-desktop-small="2" data-items-tablet="1" data-items-tablet-small="1">
					<div class="b-homeReviews__main wow slideInUp" data-wow-delay="0.3s">
						<div class="b-homeReviews__main-body m-jaguarRev">
							<p>Donec facilisis velit eust. Phasellus cons quat. Aenean letmein vitae quam. Vivamus let nunc. Nunc consequsem velde metus imperdiet lacinia. Nam rutrum congued diam. Vestibulum acda risus eros auctor as morbids sem magna viverra quis consectetuer quis nec magna. Lorem ipsum dolor ametu consectetur adipisicing elit sed do eiusmod.</p>
						</div>
						<div class="b-homeReviews__main-person">
							<div class="b-review__main-person m-personTwo">
								<div class="b-review__main-person-inside m-personTwo">
								</div>
							</div>
							<div class="b-homeReviews__main-person-name">
								<em>"</em>
								<h4>JOHN SMITH</h4>
								<p>Customer, Ferrari 488 GTB 2 Owner</p>
							</div>
						</div>
					</div>
					<div class="b-homeReviews__main wow slideInUp" data-wow-delay="0.3s">
						<div class="b-homeReviews__main-body m-bmw">
							<p>Donec facilisis velit eust. Phasellus cons quat. Aenean letmein vitae quam. Vivamus let nunc. Nunc consequsem velde metus imperdiet lacinia. Nam rutrum congued diam. Vestibulum acda risus eros auctor as morbids sem magna viverra quis consectetuer quis nec magna. Lorem ipsum dolor ametu consectetur adipisicing elit sed do eiusmod.</p>
						</div>
						<div class="b-homeReviews__main-person">
							<div class="b-review__main-person">
								<div class="b-review__main-person-inside m-personThree">
								</div>
							</div>
							<div class="b-homeReviews__main-person-name">
								<em>"</em>
								<h4>DONALD CAMBELL</h4>
								<p>Customer, Ferrari 488 GTB 2 Owner</p>
							</div>
						</div>
					</div>
					<div class="b-homeReviews__main wow slideInUp" data-wow-delay="0.3s">
						<div class="b-homeReviews__main-body m-jaguarRev">
							<p>Donec facilisis velit eust. Phasellus cons quat. Aenean letmein vitae quam. Vivamus let nunc. Nunc consequsem velde metus imperdiet lacinia. Nam rutrum congued diam. Vestibulum acda risus eros auctor as morbids sem magna viverra quis consectetuer quis nec magna. Lorem ipsum dolor ametu consectetur adipisicing elit sed do eiusmod.</p>
						</div>
						<div class="b-homeReviews__main-person">
							<div class="b-review__main-person m-personTwo">
								<div class="b-review__main-person-inside m-personTwo">
								</div>
							</div>
							<div class="b-homeReviews__main-person-name">
								<em>"</em>
								<h4>JOHN SMITH</h4>
								<p>Customer, Ferrari 488 GTB 2 Owner</p>
							</div>
						</div>
					</div>
					<div class="b-homeReviews__main wow slideInUp" data-wow-delay="0.3s">
						<div class="b-homeReviews__main-body m-bmw">
							<p>Donec facilisis velit eust. Phasellus cons quat. Aenean letmein vitae quam. Vivamus let nunc. Nunc consequsem velde metus imperdiet lacinia. Nam rutrum congued diam. Vestibulum acda risus eros auctor as morbids sem magna viverra quis consectetuer quis nec magna. Lorem ipsum dolor ametu consectetur adipisicing elit sed do eiusmod.</p>
						</div>
						<div class="b-homeReviews__main-person">
							<div class="b-review__main-person">
								<div class="b-review__main-person-inside m-personThree">
								</div>
							</div>
							<div class="b-homeReviews__main-person-name">
								<em>"</em>
								<h4>DONALD CAMBELL</h4>
								<p>Customer, Ferrari 488 GTB 2 Owner</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-homeReviews-->

		<section class="b-asks">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-10 col-sm-offset-1 col-md-offset-0 col-xs-12">
						<div class="b-asks__first wow zoomInLeft" data-wow-delay="0.3s">
							<div class="b-asks__first-circle">
								<span class="fa fa-search"></span>
							</div>
							<div class="b-asks__first-info">
								<h2>ARE YOU LOOKING FOR A CAR?</h2>
								<p>Search Our Inventory With Thousands Of Cars  And More 
									Cars Are Adding On Daily Basis</p>
							</div>
							<div class="b-asks__first-arrow">
								<a href="listings.html"><span class="fa fa-angle-right"></span></a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-10 col-sm-offset-1 col-xs-12 col-md-offset-0">
						<div class="b-asks__first m-second wow zoomInRight" data-wow-delay="0.3s">
							<div class="b-asks__first-circle">
								<span class="fa fa-usd"></span>
							</div>
							<div class="b-asks__first-info">
								<h2>DO YOU WANT TO SELL A CAR?</h2>
								<p>Search Our Inventory With Thousands Of Cars  And More 
									Cars Are Adding On Daily Basis</p>
							</div>
							<div class="b-asks__first-arrow">
								<a href="listings.html"><span class="fa fa-angle-right"></span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section><!--b-asks-->

		<section class="b-partners">
			<div class="container">
				<h1 class="s-title wow zoomInUp" data-wow-delay="0.3s">OUR PARTNERS</h1>
				<div class="">
					<div class="b-brands__brand wow zoomInLeft" data-wow-delay="0.3s">
						<img src="media/brands/lydia.png" alt="brand" />
					</div>
					<div class="b-brands__brand wow zoomInUp" data-wow-delay="0.3s">
						<img src="media/brands/decosinto.png" alt="brand" />
					</div>
					<div class="b-brands__brand wow zoomInUp" data-wow-delay="0.3s">
						<img src="media/brands/hospice.png" alt="brand" />
					</div>
					<div class="b-brands__brand wow zoomInRight" data-wow-delay="0.3s">
						<img src="media/brands/aristeia.png" alt="brand" />
					</div>
				</div>
			</div>
		</section><!--b-partners-->
</asp:Content>
