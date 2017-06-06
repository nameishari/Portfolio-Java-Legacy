$(function() {
	var lnStickyNavigation;

	$(document).ready(function() {
		applyNavigation();
	});
	function applyNavigation() {
		applyClickEvent();
		applyNavigationFixForPhone();
		applyScrollSpy();
		applyResize();
		applyStickyNavigation();
		columnChart();
	}

	function applyClickEvent() {
		$('a[href*=#]').on('click', function(e) {
			e.preventDefault();

			if ($($.attr(this, 'href')).length > 0) {
				$('html, body').animate({
					scrollTop : $($.attr(this, 'href')).offset().top
				}, 400);
			}
			return false;
		});
	}

	function applyNavigationFixForPhone() {
		$('.navbar li a').click(function(event) {
			$('.navbar-collapse').removeClass('in').addClass('collapse');
		});
	}

	function applyScrollSpy() {
		$('#navbar-example').on(
				'activate.bs.scrollspy',
				function() {
					window.location.hash = $('.nav .active a').attr('href')
							.replace('#', '#/');
				});
	}

	function applyStickyNavigation() {
		lnStickyNavigation = $('.scroll-down').offset().top + 20;

		$(window).on('scroll', function() {
			stickyNavigation();
		});

		stickyNavigation();
	}

	function stickyNavigation() {
		if ($(window).scrollTop() > lnStickyNavigation) {
			$('body').addClass('fixed');
		} else {
			$('body').removeClass('fixed');
		}
	}

	function applyResize() {
		$(window).on('resize', function() {
			lnStickyNavigation = $('.scroll-down').offset().top + 200;

			$('.header').css({
				height : ($(window).height()) + 'px'
			});
		});
	}

	window.sr = ScrollReveal();
	sr.reveal('.sr-contact', {
		duration : 1000,
		scale : 0.3,
		distance : '0px'
	}, 300);
	$('.column-chart').find('.item-progress').each(
			function() {
				var itemProgress = $(this);
				var itemProgressHeight = $(this).parent().height()
						* ($(this).data('percent') / 100);

				itemProgress.css('height', itemProgressHeight);
			});
	sr.reveal('.item-progress', {
		duration : 600,
		scale : 0.3,
		distance : '0px'
	}, 300);

});
