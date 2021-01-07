<h3>Pour la table Aliments</h3>
<p>INSERT INTO `Aliments` (`id`, `nom`,`prix`, `date`) VALUES (NULL, 'nom_de_l_aliment', 'prix_dans_ta_devise', NOW());</p>

<h3>Pour la table Type</h3>
<p>INSERT INTO `Type` (`id`, `nom`) VALUES (NULL, 'type_aliment');</p>

<h3>Pour la table saison</h3>
<p>INSERT INTO `saison` (`id`, `saison`) VALUES (NULL, 'une_saison');</p>

<h3>Pour la table stock</h3>
<p>INSERT INTO `stock` (`id`,`id_alim`, `stock`) VALUES (NULL,'id_de_l_aliment', 'le_stock');</p>

<h3>Pour la table assoc_aliments</h3>
<p>INSERT INTO `assoc_aliments` (`id`, `id_alim`,`id_type`,`id_saison`) VALUES (NULL, 'id_d_un_aliment', 'id_du_stock', 'id_du_type', 'id_de_la_saison');</p>
