import { Feature, FeatureShortTextInput, FeatureTextInput } from '../../base';

export const headshot_silicon: Feature<string> = {
  name: 'Silicon Headshot',
  description:
    'Requires a link ending with .png, .jpeg, or .jpg, starting with \
  https://, and hosted on Catbox, Imgbox, Gyazo, Lensdump, or F-List. \
  Renders the image underneath your character preview in the examine more window. \
  Image larger than 250x250 will be resized to 250x250. \
  Aim for 250x250 whenever possible',
  component: FeatureShortTextInput,
};

export const ooc_notes_silicon: Feature<string> = {
  name: 'OOC Notes (Silicon)',
  description: 'Same as OOC notes, but for your silicon character!',
  component: FeatureTextInput,
};

export const custom_species_silicon: Feature<string> = {
  name: 'Silicon Model Name',
  description:
    'The name of the module for your Silicon company, such as "Armadyne Pleasure Model."',
  component: FeatureShortTextInput,
};

export const custom_species_lore_silicon: Feature<string> = {
  name: 'Silicon Model Lore',
  description:
    'Lore for your silicon, typically its company, make, model, and details regarding its creation.',
  component: FeatureTextInput,
};

export const art_ref: Feature<string> = {
  name: 'Art Reference',
  description:
    'Art Reference that others can see for your character \
    Requires a link ending with .png, .jpeg, or .jpg, starting with \
    https://, and hosted on Catbox, Imgbox, Gyazo, Lensdump, or F-List.',
  component: FeatureShortTextInput,
};
