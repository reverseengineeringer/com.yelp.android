.class public Landroid/support/v7/internal/widget/bd;
.super Ljava/lang/Object;
.source "TintManager.java"


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/support/v7/internal/widget/be;

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I


# instance fields
.field private final i:Landroid/content/Context;

.field private final j:Landroid/content/res/Resources;

.field private final k:Landroid/util/TypedValue;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const-class v0, Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/bd;->b:Ljava/lang/String;

    .line 40
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/internal/widget/bd;->a:Landroid/graphics/PorterDuff$Mode;

    .line 42
    new-instance v0, Landroid/support/v7/internal/widget/be;

    invoke-direct {v0, v7}, Landroid/support/v7/internal/widget/be;-><init>(I)V

    sput-object v0, Landroid/support/v7/internal/widget/bd;->c:Landroid/support/v7/internal/widget/be;

    .line 48
    const/16 v0, 0xf

    new-array v0, v0, [I

    sget v1, Lcom/yelp/android/g/f;->abc_ic_ab_back_mtrl_am_alpha:I

    aput v1, v0, v3

    sget v1, Lcom/yelp/android/g/f;->abc_ic_go_search_api_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Lcom/yelp/android/g/f;->abc_ic_search_api_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Lcom/yelp/android/g/f;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lcom/yelp/android/g/f;->abc_ic_clear_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/yelp/android/g/f;->abc_ic_menu_share_mtrl_alpha:I

    aput v2, v0, v1

    sget v1, Lcom/yelp/android/g/f;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v1, v0, v7

    const/4 v1, 0x7

    sget v2, Lcom/yelp/android/g/f;->abc_ic_menu_cut_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/yelp/android/g/f;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/yelp/android/g/f;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/yelp/android/g/f;->abc_ic_menu_moreoverflow_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/yelp/android/g/f;->abc_ic_voice_search_api_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/yelp/android/g/f;->abc_textfield_search_default_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/yelp/android/g/f;->abc_textfield_default_mtrl_alpha:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/yelp/android/g/f;->abc_ab_share_pack_mtrl_alpha:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/bd;->d:[I

    .line 70
    new-array v0, v6, [I

    sget v1, Lcom/yelp/android/g/f;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Lcom/yelp/android/g/f;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Lcom/yelp/android/g/f;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/internal/widget/bd;->e:[I

    .line 80
    new-array v0, v6, [I

    sget v1, Lcom/yelp/android/g/f;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Lcom/yelp/android/g/f;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Lcom/yelp/android/g/f;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/internal/widget/bd;->f:[I

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget v1, Lcom/yelp/android/g/f;->abc_edit_text_material:I

    aput v1, v0, v3

    sget v1, Lcom/yelp/android/g/f;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Lcom/yelp/android/g/f;->abc_textfield_search_material:I

    aput v1, v0, v5

    sget v1, Lcom/yelp/android/g/f;->abc_spinner_mtrl_am_alpha:I

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lcom/yelp/android/g/f;->abc_btn_check_material:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/yelp/android/g/f;->abc_btn_radio_material:I

    aput v2, v0, v1

    sget v1, Lcom/yelp/android/g/f;->abc_spinner_textfield_background_material:I

    aput v1, v0, v7

    const/4 v1, 0x7

    sget v2, Lcom/yelp/android/g/f;->abc_ratingbar_full_material:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/bd;->g:[I

    .line 105
    new-array v0, v4, [I

    sget v1, Lcom/yelp/android/g/f;->abc_cab_background_top_material:I

    aput v1, v0, v3

    sput-object v0, Landroid/support/v7/internal/widget/bd;->h:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/support/v7/internal/widget/bd;->i:Landroid/content/Context;

    .line 132
    new-instance v0, Landroid/support/v7/internal/widget/bf;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/v7/internal/widget/bf;-><init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/bd;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/bd;->j:Landroid/content/res/Resources;

    .line 133
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    .line 134
    return-void
.end method

.method private a()Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v3, 0x7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 229
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->l:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 235
    sget v0, Lcom/yelp/android/g/b;->colorControlNormal:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v0

    .line 236
    sget v1, Lcom/yelp/android/g/b;->colorControlActivated:I

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v1

    .line 238
    new-array v2, v3, [[I

    .line 239
    new-array v3, v3, [I

    .line 243
    new-array v4, v8, [I

    const v5, -0x101009e

    aput v5, v4, v7

    aput-object v4, v2, v7

    .line 244
    sget v4, Lcom/yelp/android/g/b;->colorControlNormal:I

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/bd;->c(I)I

    move-result v4

    aput v4, v3, v7

    .line 247
    new-array v4, v8, [I

    const v5, 0x101009c

    aput v5, v4, v7

    aput-object v4, v2, v8

    .line 248
    aput v1, v3, v8

    .line 249
    const/4 v4, 0x2

    .line 251
    new-array v5, v8, [I

    const v6, 0x10102fe

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 252
    aput v1, v3, v4

    .line 253
    const/4 v4, 0x3

    .line 255
    new-array v5, v8, [I

    const v6, 0x10100a7

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 256
    aput v1, v3, v4

    .line 257
    const/4 v4, 0x4

    .line 259
    new-array v5, v8, [I

    const v6, 0x10100a0

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 260
    aput v1, v3, v4

    .line 261
    const/4 v4, 0x5

    .line 263
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    aput-object v5, v2, v4

    .line 264
    aput v1, v3, v4

    .line 265
    const/4 v1, 0x6

    .line 268
    new-array v4, v7, [I

    aput-object v4, v2, v1

    .line 269
    aput v0, v3, v1

    .line 272
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/bd;->l:Landroid/content/res/ColorStateList;

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Landroid/support/v7/internal/widget/bd;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Landroid/support/v7/internal/widget/bd;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/bd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/c;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 212
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 213
    if-ne v3, p1, :cond_1

    .line 214
    const/4 v0, 0x1

    .line 217
    :cond_0
    return v0

    .line 212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b()Landroid/content/res/ColorStateList;
    .locals 8

    .prologue
    const v7, 0x1010030

    const/4 v1, 0x3

    const v6, 0x3e99999a    # 0.3f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->n:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 279
    new-array v0, v1, [[I

    .line 280
    new-array v1, v1, [I

    .line 284
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v0, v4

    .line 285
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v7, v2}, Landroid/support/v7/internal/widget/bd;->a(IF)I

    move-result v2

    aput v2, v1, v4

    .line 288
    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v5

    .line 289
    sget v2, Lcom/yelp/android/g/b;->colorControlActivated:I

    invoke-virtual {p0, v2, v6}, Landroid/support/v7/internal/widget/bd;->a(IF)I

    move-result v2

    aput v2, v1, v5

    .line 290
    const/4 v2, 0x2

    .line 293
    new-array v3, v4, [I

    aput-object v3, v0, v2

    .line 294
    invoke-virtual {p0, v7, v6}, Landroid/support/v7/internal/widget/bd;->a(IF)I

    move-result v3

    aput v3, v1, v2

    .line 297
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/bd;->n:Landroid/content/res/ColorStateList;

    .line 299
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private c()Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 303
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->m:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 304
    new-array v0, v1, [[I

    .line 305
    new-array v1, v1, [I

    .line 309
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v0, v4

    .line 310
    sget v2, Lcom/yelp/android/g/b;->colorSwitchThumbNormal:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bd;->c(I)I

    move-result v2

    aput v2, v1, v4

    .line 313
    new-array v2, v5, [I

    const v3, 0x10100a0

    aput v3, v2, v4

    aput-object v2, v0, v5

    .line 314
    sget v2, Lcom/yelp/android/g/b;->colorControlActivated:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v2

    aput v2, v1, v5

    .line 315
    const/4 v2, 0x2

    .line 318
    new-array v3, v4, [I

    aput-object v3, v0, v2

    .line 319
    sget v3, Lcom/yelp/android/g/b;->colorSwitchThumbNormal:I

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v3

    aput v3, v1, v2

    .line 322
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/bd;->m:Landroid/content/res/ColorStateList;

    .line 324
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private d()Landroid/content/res/ColorStateList;
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 328
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 329
    new-array v0, v1, [[I

    .line 330
    new-array v1, v1, [I

    .line 334
    new-array v2, v4, [I

    const v3, -0x101009e

    aput v3, v2, v5

    aput-object v2, v0, v5

    .line 335
    sget v2, Lcom/yelp/android/g/b;->colorButtonNormal:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bd;->c(I)I

    move-result v2

    aput v2, v1, v5

    .line 338
    new-array v2, v4, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    aput-object v2, v0, v4

    .line 339
    sget v2, Lcom/yelp/android/g/b;->colorControlHighlight:I

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v2

    aput v2, v1, v4

    .line 340
    const/4 v2, 0x2

    .line 342
    new-array v3, v4, [I

    const v4, 0x101009c

    aput v4, v3, v5

    aput-object v3, v0, v2

    .line 343
    sget v3, Lcom/yelp/android/g/b;->colorControlHighlight:I

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v3

    aput v3, v1, v2

    .line 344
    const/4 v2, 0x3

    .line 347
    new-array v3, v5, [I

    aput-object v3, v0, v2

    .line 348
    sget v3, Lcom/yelp/android/g/b;->colorButtonNormal:I

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v3

    aput v3, v1, v2

    .line 351
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Landroid/support/v7/internal/widget/bd;->o:Landroid/content/res/ColorStateList;

    .line 353
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private static d(I)Z
    .locals 1

    .prologue
    .line 221
    sget-object v0, Landroid/support/v7/internal/widget/bd;->f:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/bd;->d:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/bd;->e:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/bd;->g:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v7/internal/widget/bd;->h:[I

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(IF)I
    .locals 3

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v0

    .line 370
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 373
    const v2, 0xffffff

    and-int/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->i:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/c;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    sget-object v0, Landroid/support/v7/internal/widget/bd;->g:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Landroid/support/v7/internal/widget/bc;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/bd;->a()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/bc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 144
    :cond_1
    sget v0, Lcom/yelp/android/g/f;->abc_switch_track_mtrl_alpha:I

    if-ne p1, v0, :cond_2

    .line 145
    new-instance v0, Landroid/support/v7/internal/widget/bc;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/bd;->b()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/bc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 146
    :cond_2
    sget v0, Lcom/yelp/android/g/f;->abc_switch_thumb_material:I

    if-ne p1, v0, :cond_3

    .line 147
    new-instance v0, Landroid/support/v7/internal/widget/bc;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/bd;->c()Landroid/content/res/ColorStateList;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/bc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 149
    :cond_3
    sget v0, Lcom/yelp/android/g/f;->abc_btn_default_mtrl_shape:I

    if-ne p1, v0, :cond_4

    .line 150
    new-instance v0, Landroid/support/v7/internal/widget/bc;

    invoke-direct {p0}, Landroid/support/v7/internal/widget/bd;->d()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/bc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 151
    :cond_4
    sget-object v0, Landroid/support/v7/internal/widget/bd;->h:[I

    invoke-static {v0, p1}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->j:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_5
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/internal/widget/bd;->a(ILandroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method a(ILandroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 161
    const/4 v4, 0x0

    .line 166
    sget-object v1, Landroid/support/v7/internal/widget/bd;->d:[I

    invoke-static {v1, p1}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    sget v0, Lcom/yelp/android/g/b;->colorControlNormal:I

    move v1, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    .line 182
    :goto_0
    if-eqz v4, :cond_1

    .line 183
    if-nez v0, :cond_0

    .line 184
    sget-object v0, Landroid/support/v7/internal/widget/bd;->a:Landroid/graphics/PorterDuff$Mode;

    .line 186
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/bd;->b(I)I

    move-result v4

    .line 189
    sget-object v1, Landroid/support/v7/internal/widget/bd;->c:Landroid/support/v7/internal/widget/be;

    invoke-virtual {v1, v4, v0}, Landroid/support/v7/internal/widget/be;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 191
    if-nez v1, :cond_5

    .line 193
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v4, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 194
    sget-object v5, Landroid/support/v7/internal/widget/bd;->c:Landroid/support/v7/internal/widget/be;

    invoke-virtual {v5, v4, v0, v1}, Landroid/support/v7/internal/widget/be;->a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    move-object v0, v1

    .line 198
    :goto_1
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 200
    if-eq v2, v3, :cond_1

    .line 201
    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 209
    :cond_1
    return-void

    .line 169
    :cond_2
    sget-object v1, Landroid/support/v7/internal/widget/bd;->e:[I

    invoke-static {v1, p1}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    sget v0, Lcom/yelp/android/g/b;->colorControlActivated:I

    move v1, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    .line 171
    goto :goto_0

    .line 172
    :cond_3
    sget-object v1, Landroid/support/v7/internal/widget/bd;->f:[I

    invoke-static {v1, p1}, Landroid/support/v7/internal/widget/bd;->a([II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    const v0, 0x1010031

    .line 175
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v4, v2

    move v2, v3

    move v6, v0

    move-object v0, v1

    move v1, v6

    goto :goto_0

    .line 176
    :cond_4
    sget v1, Lcom/yelp/android/g/f;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v1, :cond_6

    .line 177
    const v1, 0x1010030

    .line 179
    const v0, 0x42233333    # 40.8f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v6, v0

    move-object v0, v4

    move v4, v2

    move v2, v6

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move v2, v3

    move v1, v0

    move v6, v0

    move-object v0, v4

    move v4, v6

    goto :goto_0
.end method

.method b(I)I
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 365
    :goto_0
    return v0

    .line 361
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 362
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->j:Landroid/content/res/Resources;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(I)I
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010033

    iget-object v2, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/bd;->k:Landroid/util/TypedValue;

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 381
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/bd;->a(IF)I

    move-result v0

    return v0
.end method
