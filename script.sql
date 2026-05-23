-- Tabla de Clientes
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    fullName VARCHAR(150),
    email VARCHAR(100),
    phone VARCHAR(20),
    status VARCHAR(20),
    created TIMESTAMP DEFAULT NOW(),
    modified TIMESTAMP,
    created_id INT,
    modified_id INT
);

-- Tabla de Habitaciones
CREATE TABLE rooms (
    id SERIAL PRIMARY KEY,
    roomNumber INT,
    roomType VARCHAR(50),
    pricePerNight DECIMAL(10,2),
    status VARCHAR(20),
    created TIMESTAMP DEFAULT NOW(),
    modified TIMESTAMP,
    created_id INT,
    modified_id INT
);

-- Tabla de Reservas
CREATE TABLE reservations (
    id SERIAL PRIMARY KEY,
    checkInDate DATE,
    checkOutDate DATE,
    user_id INT REFERENCES users(id),
    status VARCHAR(20),
    created TIMESTAMP DEFAULT NOW(),
    modified TIMESTAMP,
    created_id INT,
    modified_id INT
);

-- Tabla Intermedia (Reservas y Habitaciones)
CREATE TABLE reservations_rooms (
    id SERIAL PRIMARY KEY,
    reservation_id INT REFERENCES reservations(id),
    room_id INT REFERENCES rooms(id),
    status VARCHAR(20),
    created TIMESTAMP DEFAULT NOW(),
    modified TIMESTAMP,
    created_id INT,
    modified_id INT
);
