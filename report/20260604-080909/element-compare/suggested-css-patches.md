# Suggested CSS Patch Ideas

Generated: 2026-06-04T15:45:11.972Z

Only medium/high confidence suggestions are included.

## core/themes/default_admin/css/base/elements.css
### 33. Admin Theme (dark + light) Content Overview - Dropbutton Primary Action Link style regression vs Drupal 11 Gin
Confidence: **medium**

```css
a {
  padding-block: 10px; /* current ~12.8px */
  padding-inline: 30px; /* current ~25px */
}
```

### 107. Admin Theme (dark + light) Structure Views - Dropbutton Primary Action Link style regression vs Drupal 11 Gin
Confidence: **medium**

```css
a {
  padding-block: 14.1px; /* current ~10px */
  padding-inline: 29.3px; /* current ~24px */
  min-height: 27.4px; /* current ~24px */
}
```

## core/themes/default_admin/css/components/navigation.css
### 1. Admin Theme (light) Appearance List - Page Title Heading (h1) style regression vs Drupal 11 Gin
Confidence: **medium**

```css
h1 {
  font-size: 24px; /* current ~34px */
  padding-inline: 6px; /* current ~8.5px */
  min-height: 29px; /* current ~41px */
}
```

### 14. Admin Theme (dark + light) Configuration Text Formats - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17.8px; /* current ~16px */
  padding-block: 14px; /* current ~20px */
  padding-inline: 18px; /* current ~27.5px */
  min-height: 35px; /* current ~40px */
}
```

### 28. Admin Theme (light) Content Overview - Page Title Heading (h1) style regression vs Drupal 11 Gin
Confidence: **medium**

```css
h1 {
  font-size: 24px; /* current ~34px */
  padding-inline: 6px; /* current ~8.5px */
  min-height: 29px; /* current ~41px */
}
```

### 40. Admin Theme (dark + light) Content Add Article - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17.1px; /* current ~16px */
  padding-block: 16.3px; /* current ~20px */
  padding-inline: 20.5px; /* current ~27.5px */
  min-height: 35.8px; /* current ~40px */
}
```

### 48. Admin Theme (dark + light) Structure Block Layout - Page Title Heading (h1) style regression vs Drupal 11 Gin
Confidence: **medium**

```css
h1 {
  font-size: 24px; /* current ~34px */
  padding-inline: 6px; /* current ~8.5px */
  min-height: 29px; /* current ~41px */
}
```

### 49. Admin Theme (dark + light) Structure Block Layout - Button style regression vs Drupal 11 Gin
Confidence: **medium**

```css
button, input, optgroup, select, textarea {
  padding-block: 14.5px; /* current ~20px */
  padding-inline: 20px; /* current ~27.5px */
  min-height: 34.8px; /* current ~40px */
}
```

### 56. Admin Theme (dark + light) Structure Content Types - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17px; /* current ~16px */
  padding-block: 14.3px; /* current ~20px */
  padding-inline: 19.5px; /* current ~27.5px */
  min-height: 34.8px; /* current ~40px */
}
```

### 67. Admin Theme (dark + light) Structure Article Fields - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17px; /* current ~16px */
  padding-block: 14.3px; /* current ~20px */
  padding-inline: 19.5px; /* current ~27.5px */
  min-height: 34.8px; /* current ~40px */
}
```

### 73. Admin Theme (dark + light) Structure Article Display - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17.5px; /* current ~16px */
  padding-block: 16.3px; /* current ~20px */
  padding-inline: 20.5px; /* current ~27.5px */
  min-height: 35px; /* current ~40px */
}
```

### 85. Admin Theme (dark + light) Structure Menus - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17px; /* current ~16px */
  padding-block: 14.3px; /* current ~20px */
  padding-inline: 19.5px; /* current ~27.5px */
  min-height: 34.8px; /* current ~40px */
}
```

### 92. Admin Theme (dark + light) Structure Admin Menu - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17.8px; /* current ~16px */
  padding-block: 14px; /* current ~20px */
  padding-inline: 18px; /* current ~27.5px */
  min-height: 35px; /* current ~40px */
}
```

### 101. Admin Theme (dark + light) Structure Taxonomy - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 16.9px; /* current ~16px */
  padding-block: 16px; /* current ~20px */
  padding-inline: 20.6px; /* current ~27.5px */
  min-height: 36.3px; /* current ~40px */
}
```

### 104. Admin Theme (dark + light) Structure Views - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17px; /* current ~16px */
  padding-block: 14.3px; /* current ~20px */
  padding-inline: 19.5px; /* current ~27.5px */
  min-height: 34.8px; /* current ~40px */
}
```

### 141. Admin Theme (dark + light) Block Content Types - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 16.9px; /* current ~16px */
  padding-block: 16px; /* current ~20px */
  padding-inline: 20.6px; /* current ~27.5px */
  min-height: 36.3px; /* current ~40px */
}
```

### 153. Admin Theme (dark + light) People Roles - Button style regression vs Drupal 11 Gin
Confidence: **high**

```css
button, input, optgroup, select, textarea {
  line-height: 17.8px; /* current ~16px */
  padding-block: 14px; /* current ~20px */
  padding-inline: 18px; /* current ~27.5px */
  min-height: 35px; /* current ~40px */
}
```

### 160. Admin Theme (dark + light) People Permissions - Page Title Heading (h1) style regression vs Drupal 11 Gin
Confidence: **medium**

```css
h1 {
  font-size: 24px; /* current ~34px */
  padding-inline: 6px; /* current ~8.5px */
  min-height: 29px; /* current ~41px */
}
```

