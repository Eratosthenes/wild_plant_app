$(function(){
  var reset = function(){
    $('button').addClass('hidden');
    $('span').addClass('hidden');
  }

  reset();

  $('a').click(function(){
    $('button').removeClass('hidden');
    $('#features').addClass('hidden');
    $(this).addClass('list-group-item-success');
    multiStep($(this).index());
  });

  var multiStep = function(idx){
    var currentSpan = $('span').eq(idx);
    var currentForm = currentSpan.find('.field');
    currentSpan.removeClass('hidden');
    var i=0;
    currentForm.addClass('hidden');
    currentForm.eq(0).removeClass('hidden');
    $('#back').addClass('hidden');
    $('#finish').addClass('hidden');
    $('.action').addClass('hidden');

    var buttonValidation = function(i){
      if (i==0)
        $('#first_back').removeClass('hidden');
      else
        $('#first_back').addClass('hidden');
      if (i>0 && $('#back').is('.hidden'))
      	$('#back').removeClass('hidden');
      if (i==0 && !$('#back').is('.hidden'))
      	$('#back').addClass('hidden');
      if (i==currentForm.length-1 && !$('#next').is('.hidden'))
      {	$('#next').addClass('hidden');
      	$('#finish').removeClass('hidden');
      }
      if (i<currentForm.length-1 && $('#next').is('.hidden'))
      {	$('#next').removeClass('hidden');
        $('#finish').addClass('hidden');
      }
    };

    $('#next').click(function(){
      i++;
      buttonValidation(i);
      currentForm.eq(i).removeClass('hidden');
      currentForm.eq(i-1).addClass('hidden');
    });

    $('#back').click(function(){
      i--;
      buttonValidation(i);
      currentForm.eq(i).removeClass('hidden');
      currentForm.eq(i+1).addClass('hidden');
    });

    $('#first_back').click(function(){
      $('#features').removeClass('hidden');
      $('.action').removeClass('hidden');
      reset();
    });

    $('#finish').click(function(){
      $('#features').removeClass('hidden');
      $('.action').removeClass('hidden');
      reset();
    });
  }
})
