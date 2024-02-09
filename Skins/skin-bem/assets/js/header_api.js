setTimeout(() => {
  // URL de la API JSON
  
  const apiUrl = "portals/0/skins/skin-bem/assets/js/menu.json";
  var datos = [];

  // Selecciona el elemento ul del menú
  const menu_bottom = document.getElementById("menu-bottom");
  const menu_top = document.getElementById("menu-top");

  // Realiza una solicitud GET a la API JSON
  fetch(apiUrl)
    .then((response) => response.json())
    .then((data) => {
      // Itera a través de los datos y crea elementos li para el menú
      datos = data;
      console.log("data", data.menu_top, datos);

      data.menu_top.forEach((item) => {
        const li = document.createElement("li");
        li.classList.add("_navbar__item", "_navbar__item--top");
        const a = document.createElement("a");
        a.classList.add("_navbar__link", "_navbar__link--top");
        a.textContent = item.nombre;
        a.href = item.url;

        if (item.child && item.child.length > 0) {
          li.classList.add("_navbar__item--children");
          const subdiv = document.createElement("div");
          subdiv.classList.add(
            "_navbar__container-link-submenu",
            "_navbar__container-link-submenu--top"
          );
          subdiv.appendChild(a);
          const submenu = document.createElement("ul");
          submenu.classList.add("_navbar__submenu", "_navbar__submenu--top");
          for (let index = 0; index < item.child.length; index++) {
            const lisub = document.createElement("li");
            const asub = document.createElement("a");
            lisub.classList.add("_navbar__subitem", "_navbar__subitem--top");
            asub.classList.add("_navbar__link", "_navbar__link--top");
            asub.textContent = item.child[index].nombre;
            //lisub.innerHTML += '<span>'+item.child[index].nombre+'</span>';
            asub.href = item.child[index].url;

            /*  lisub.addEventListener('click', ()=>{
                                   window.location.replace(item.child[index].url);
                                   });*/
            lisub.append(asub);
            submenu.append(lisub);
          }

          li.appendChild(submenu);

          const arrow = document.createElement("span");
          arrow.classList.add(
            "_navbar__btn-page-desk",
            "_navbar__btn-page",
            "_navbar__btn-page--bottom"
          );
          arrow.setAttribute("id", "sub-page");
          const icon = document.createElement("iconify-icon");
          icon.setAttribute("icon", "uil:angle-down");
          arrow.appendChild(icon);
          a.appendChild(arrow);
        }
        li.appendChild(a);

        menu_top.appendChild(li);
      });

      data.menu_bottom.forEach((item) => {
        const li = document.createElement("li");
        li.classList.add(
          "_navbar__item",
          "_navbar__item--bottom",
          "_navbar__item--last"
        );
        const a = document.createElement("a");
        a.classList.add("_navbar__link", "_navbar__link--bottom");
        a.textContent = item.nombre;
        a.href = item.url;
        if (item.child && item.child.length > 0) {
          li.classList.add("_navbar__item--children");
          const subdiv = document.createElement("div");
          subdiv.classList.add(
            "_navbar__container-link-submenu",
            "_navbar__container-link-submenu--bottom"
          );
          subdiv.appendChild(a);
          const submenu = document.createElement("ul");
          submenu.classList.add("_navbar__submenu", "_navbar__submenu--bottom");
          for (let index = 0; index < item.child.length; index++) {
            const lisub = document.createElement("li");
            const asub = document.createElement("a");
            lisub.classList.add("_navbar__subitem", "_navbar__subitem--bottom");
            asub.classList.add("_navbar__link", "_navbar__link--bottom");
            asub.textContent = item.child[index].nombre;
            //lisub.innerHTML += '<span>'+item.child[index].nombre+'</span>';
            asub.href = item.child[index].url;

            /*  lisub.addEventListener('click', ()=>{
                                   window.location.replace(item.child[index].url);
                                   });*/
            lisub.append(asub);
            submenu.append(lisub);
          }

          li.appendChild(submenu);
          const arrow = document.createElement("span");
          arrow.classList.add(
            "_navbar__btn-page-desk",
            "_navbar__btn-page",
            "_navbar__btn-page--bottom"
          );
          arrow.setAttribute("id", "sub-page");
          const icon = document.createElement("iconify-icon");
          icon.setAttribute("icon", "uil:angle-down");
          arrow.appendChild(icon);
          a.appendChild(arrow);
        }
        li.appendChild(a);
        menu_bottom.appendChild(li);
      });
    })
    .catch((error) => {
      menu_bottom.setAttribute("style", "color:red;");
      menu_bottom.innerHTML =
        "hubo un error en el menu <br> Comuníquese con el proveedor de manera INMEDIATA";
      console.error("Hubo un error al cargar el menú:", error);
    });
}, 100);
