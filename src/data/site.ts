export function waLink(numero: string, mensaje?: string): string {
  if (mensaje) return `https://wa.me/${numero}?text=${encodeURIComponent(mensaje)}`;
  return `https://wa.me/${numero}`;
}

export function telVisible(numero: string): string {
  return numero.replace(/ /g, '\u00A0');
}

export const mensajesWa = {
  general:          'Hola, vengo de vipsystems.site y quiero información.',
  facturacion:      'Hola, quiero cotizar facturación electrónica.',
  pruebaAgenteVip:  'Hola, quiero probar AgenteVip.',
  empresaAgenteVip: 'Hola, quiero AgenteVip para mi empresa.',
  demoAlkilaVip:    'Hola, quiero una demostración de AlkilaVip.',
};

const WA_COMERCIAL  = '593960510695';
const WA_AGENTEVIP  = '593996712248';

export const site = {
  name: 'VipSystems',
  tagline: 'Desarrollo de software, CRM e integraciones',
  city: 'Guayaquil, Ecuador',
  email: 'info@vipsystems.site',
  whatsapp: {
    comercial: {
      number: '+593 96 051 0695',
      waId: WA_COMERCIAL,
    },
    agentevip: {
      number: '+593 99 671 2248',
      waId: WA_AGENTEVIP,
    },
  },
  social: [
    { label: 'WhatsApp', url: waLink(WA_COMERCIAL, mensajesWa.general) },
    { label: 'Facebook', url: 'https://www.facebook.com/admin.vipsystem' },
  ],
  clientes: [
    'CELCO',
    'GreenfieldCRM',
    'UASB',
    'Sigue-e',
    'Busimot',
    'Steiner',
    'Ministerio de Energía y Minas',
    'CES',
    'Inmobiliar',
    'Ebos Platforms',
  ],
  tecnologias: [
    'Java',
    'Angular',
    'React',
    'React Native',
    'NativeScript',
    'PHP',
    'MySQL / MariaDB',
    'PostgreSQL',
    'SugarCRM',
    'SuiteCRM',
    'Kommo',
  ],
};
