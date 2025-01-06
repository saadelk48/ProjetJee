let cart = [];
let totalPrice = 0;

function addToCart(productBtn) {
    const productItem = productBtn.closest('.product-item');
    const priceText = productItem.querySelector('.item-price').textContent;
    const productPrice = parseFloat(priceText.replace('$', '').trim());
    const id = productBtn.dataset.id;
    const name = productBtn.dataset.name;

    const existingProduct = cart.find(product => product.id === id);
    if (existingProduct) {
        existingProduct.quantity += 1;
    } else {
        cart.push({ id, name, price: productPrice, quantity: 1 });
    }

    totalPrice += productPrice;
    updateCartSummary();
    updateCartDisplay();
}

function updateCartSummary() {
    const cartItemCount = cart.reduce((acc, product) => acc + product.quantity, 0);
    const cartTotal = totalPrice.toFixed(2);
    document.querySelector('.cart span').textContent = `Cart: (${cartItemCount} items - $${cartTotal})`;
}

function updateCartDisplay() {
    const cartItems = document.getElementById('cart-items');
    cartItems.innerHTML = '';

    cart.forEach(product => {
        const li = document.createElement('li');
        li.innerHTML = `
            <span>${product.name} - $${product.price} x ${product.quantity}</span>
            <button class="remove" data-id="${product.id}">Remove</button>
        `;
        cartItems.appendChild(li);
    });

    document.querySelectorAll('.remove').forEach(button => {
        button.addEventListener('click', (e) => {
            const id = e.target.dataset.id;
            removeFromCart(id);
        });
    });
}

function removeFromCart(id) {
    const product = cart.find(item => item.id === id);
    if (product) {
        totalPrice -= product.price * product.quantity;
        cart = cart.filter(item => item.id !== id);
        updateCartSummary();
        updateCartDisplay();
    }
}

const cartSidebar = document.getElementById('cart-sidebar');
const cartBtn = document.getElementById('navbar-cart');
const closeCart = document.getElementById('close-cart');

if (cartBtn) {
    cartBtn.addEventListener('click', toggleCartSidebar);
}

if (closeCart) {
    closeCart.addEventListener('click', () => {
        cartSidebar.classList.remove('open');
    });
}

function toggleCartSidebar(event) {
    event.preventDefault();
    cartSidebar.classList.toggle('open');
}
