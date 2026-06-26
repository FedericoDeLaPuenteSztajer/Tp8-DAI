CREATE TABLE public.provinces (
    id integer NOT NULL,
    name character varying(75) NOT NULL,
    full_name character varying(75) NOT NULL,
    latitude double precision,
    longitude double precision,
    display_order integer
);

INSERT INTO public.provinces VALUES (1, 'Chaco', 'Provincia de Chaco', -24.89508628845215, -59.93218994140625, 100);
INSERT INTO public.provinces VALUES (2, 'Córdova', 'Provincia de Córdova', -24.89508628845215, -59.93218994140625, 50);
INSERT INTO public.provinces VALUES (3, 'Chile', 'País de Chile', -24.89508628845215, -59.93218994140625, 25);
INSERT INTO public.provinces VALUES (4, 'Lima', 'Provincia de Lima', -24.89508628845215, -59.93218994140625, 12);
INSERT INTO public.provinces VALUES (5, 'Rosario', 'Provincia de Rosario', -24.89508628845215, -59.93218994140625, 6);