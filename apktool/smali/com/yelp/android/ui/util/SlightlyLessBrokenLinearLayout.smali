.class public Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SlightlyLessBrokenLinearLayout.java"


# static fields
.field private static final CLICKABLE:I = 0x4000

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I

.field private static final DRAWING_CACHE_QUALITY_FLAGS:[I

.field private static final DUPLICATE_PARENT_STATE:I = 0x400000

.field private static final FADING_EDGE_NONE:I = 0x0

.field private static final FITS_SYSTEM_WINDOWS:I = 0x2

.field private static final FOCUSABLE:I = 0x1

.field private static final FOCUSABLE_IN_TOUCH_MODE:I = 0x40000

.field private static final LONG_CLICKABLE:I = 0x200000

.field private static final SAVE_DISABLED:I = 0x10000

.field private static final SCROLLBARS_NONE:I = 0x0

.field private static final SCROLLBARS_STYLE_MASK:I = 0x3000000

.field private static final SCROLLBARS_VERTICAL:I = 0x200

.field private static final VISIBILITY_FLAGS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->VISIBILITY_FLAGS:[I

    .line 102
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->DRAWING_CACHE_QUALITY_FLAGS:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data

    .line 102
    :array_1
    .array-data 4
        0x0
        0x80000
        0x100000
    .end array-data

    .line 130
    :array_2
    .array-data 4
        0x20000
        0x40000
        0x60000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 25

    .prologue
    .line 145
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    sget-object v4, Lcom/yelp/android/b;->FakeView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 148
    const/4 v15, 0x0

    .line 150
    const/4 v14, -0x1

    .line 151
    const/4 v13, -0x1

    .line 152
    const/4 v12, -0x1

    .line 153
    const/4 v11, -0x1

    .line 155
    const/4 v10, -0x1

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v8, 0x0

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v6, 0x0

    .line 163
    const/4 v5, 0x0

    .line 165
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v17

    .line 166
    const/4 v4, 0x0

    move/from16 v24, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move-object v14, v15

    move/from16 v15, v24

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    .line 167
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v18

    .line 168
    packed-switch v18, :pswitch_data_0

    .line 166
    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 170
    :pswitch_1
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_1

    .line 173
    :pswitch_2
    const/4 v9, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    goto :goto_1

    .line 176
    :pswitch_3
    const/4 v13, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    goto :goto_1

    .line 179
    :pswitch_4
    const/4 v12, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    goto :goto_1

    .line 182
    :pswitch_5
    const/4 v11, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    goto :goto_1

    .line 185
    :pswitch_6
    const/4 v10, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    goto :goto_1

    .line 188
    :pswitch_7
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    goto :goto_1

    .line 191
    :pswitch_8
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    goto :goto_1

    .line 194
    :pswitch_9
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setId(I)V

    goto :goto_1

    .line 197
    :pswitch_a
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 200
    :pswitch_b
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 201
    or-int/lit8 v8, v8, 0x2

    goto/16 :goto_1

    .line 205
    :pswitch_c
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 206
    or-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 210
    :pswitch_d
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 211
    const v18, 0x40001

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 215
    :pswitch_e
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 216
    or-int/lit16 v8, v8, 0x4000

    goto/16 :goto_1

    .line 220
    :pswitch_f
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 221
    const/high16 v18, 0x200000

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 225
    :pswitch_10
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-nez v18, :cond_0

    .line 226
    const/high16 v18, 0x10000

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 230
    :pswitch_11
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 231
    const/high16 v18, 0x400000

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 235
    :pswitch_12
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 236
    if-eqz v18, :cond_0

    .line 237
    sget-object v19, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->VISIBILITY_FLAGS:[I

    aget v18, v19, v18

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 241
    :pswitch_13
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 242
    if-eqz v18, :cond_0

    .line 243
    sget-object v19, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->DRAWING_CACHE_QUALITY_FLAGS:[I

    aget v18, v19, v18

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 247
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    const-string/jumbo v20, "setContentDescription"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Ljava/lang/CharSequence;

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 249
    if-eqz v19, :cond_0

    .line 250
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->safeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 254
    :pswitch_15
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-nez v18, :cond_0

    .line 255
    const v18, -0x8000001

    and-int v8, v8, v18

    goto/16 :goto_1

    .line 259
    :pswitch_16
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-nez v18, :cond_0

    .line 260
    const v18, -0x10000001

    and-int v8, v8, v18

    goto/16 :goto_1

    .line 264
    :pswitch_17
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 265
    if-eqz v18, :cond_0

    .line 266
    or-int v8, v8, v18

    goto/16 :goto_1

    .line 270
    :pswitch_18
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    .line 271
    if-eqz v18, :cond_0

    .line 272
    or-int v8, v8, v18

    goto/16 :goto_1

    .line 276
    :pswitch_19
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 277
    if-eqz v4, :cond_0

    .line 278
    const/high16 v18, 0x3000000

    and-int v18, v18, v4

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 282
    :pswitch_1a
    const/4 v7, 0x1

    .line 283
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 284
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setScrollContainer(Z)V

    goto/16 :goto_1

    .line 288
    :pswitch_1b
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 289
    const/high16 v18, 0x4000000

    or-int v8, v8, v18

    goto/16 :goto_1

    .line 293
    :pswitch_1c
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setNextFocusLeftId(I)V

    goto/16 :goto_1

    .line 296
    :pswitch_1d
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setNextFocusRightId(I)V

    goto/16 :goto_1

    .line 299
    :pswitch_1e
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setNextFocusUpId(I)V

    goto/16 :goto_1

    .line 302
    :pswitch_1f
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setNextFocusDownId(I)V

    goto/16 :goto_1

    .line 305
    :pswitch_20
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setMinimumWidth(I)V

    goto/16 :goto_1

    .line 308
    :pswitch_21
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setMinimumHeight(I)V

    goto/16 :goto_1

    .line 311
    :pswitch_22
    const-class v19, Landroid/content/Context;

    const-string/jumbo v20, "isRestricted"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 312
    if-eqz v19, :cond_1

    .line 313
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->safeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 314
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 315
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :cond_1
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 321
    if-eqz v18, :cond_0

    .line 322
    new-instance v19, Lcom/yelp/android/ui/util/bx;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/bx;-><init>(Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 358
    :pswitch_23
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setClipChildren(Z)V

    goto/16 :goto_1

    .line 361
    :pswitch_24
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setClipToPadding(Z)V

    goto/16 :goto_1

    .line 364
    :pswitch_25
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setAnimationCacheEnabled(Z)V

    goto/16 :goto_1

    .line 367
    :pswitch_26
    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setPersistentDrawingCache(I)V

    goto/16 :goto_1

    .line 370
    :pswitch_27
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setAddStatesFromChildren(Z)V

    goto/16 :goto_1

    .line 373
    :pswitch_28
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto/16 :goto_1

    .line 376
    :pswitch_29
    const/16 v19, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 377
    if-lez v18, :cond_0

    .line 378
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto/16 :goto_1

    .line 382
    :pswitch_2a
    sget-object v19, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    aget v18, v19, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setDescendantFocusability(I)V

    goto/16 :goto_1

    .line 388
    :cond_2
    if-eqz v14, :cond_3

    .line 389
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_3
    if-ltz v9, :cond_10

    move v10, v9

    move v11, v9

    move v12, v9

    .line 403
    :goto_2
    if-ltz v12, :cond_c

    :goto_3
    if-ltz v11, :cond_d

    :goto_4
    if-ltz v10, :cond_e

    :goto_5
    if-ltz v9, :cond_f

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v10, v9}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setPadding(IIII)V

    .line 409
    if-eqz v4, :cond_4

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-super {v0, v1}, Landroid/widget/LinearLayout;->recomputeViewAttributes(Landroid/view/View;)V

    .line 413
    :cond_4
    if-nez v6, :cond_5

    if-eqz v5, :cond_6

    .line 414
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->scrollTo(II)V

    .line 417
    :cond_6
    if-nez v7, :cond_7

    and-int/lit16 v4, v8, 0x200

    if-eqz v4, :cond_7

    .line 418
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setScrollContainer(Z)V

    .line 421
    :cond_7
    const/16 v4, 0x9

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 422
    if-ltz v4, :cond_8

    .line 423
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setOrientation(I)V

    .line 426
    :cond_8
    const/16 v4, 0x8

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 427
    if-ltz v4, :cond_9

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setGravity(I)V

    .line 431
    :cond_9
    const/16 v4, 0x2d

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 432
    if-nez v4, :cond_a

    .line 433
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setBaselineAligned(Z)V

    .line 436
    :cond_a
    const/16 v4, 0x2f

    const/high16 v5, -0x40800000    # -1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setWeightSum(F)V

    .line 438
    const/16 v4, 0x2e

    const/4 v5, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 440
    if-lez v4, :cond_b

    .line 441
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setBaselineAlignedChildIndex(I)V

    .line 444
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 445
    return-void

    .line 403
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getPaddingLeft()I

    move-result v12

    goto :goto_3

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getPaddingTop()I

    move-result v11

    goto/16 :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getPaddingRight()I

    move-result v10

    goto/16 :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->getPaddingBottom()I

    move-result v9

    goto/16 :goto_6

    :cond_10
    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    goto/16 :goto_2

    .line 168
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_b
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_11
        :pswitch_23
        :pswitch_24
        :pswitch_29
        :pswitch_25
        :pswitch_26
        :pswitch_28
        :pswitch_27
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_15
        :pswitch_1b
        :pswitch_1a
        :pswitch_16
        :pswitch_22
        :pswitch_14
    .end packed-switch
.end method

.method private varargs getMethodSafely(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 461
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 462
    :catch_0
    move-exception v1

    goto :goto_0

    .line 463
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private varargs safeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 455
    :goto_0
    return-object v0

    .line 451
    :catch_0
    move-exception v1

    goto :goto_0

    .line 452
    :catch_1
    move-exception v1

    goto :goto_0

    .line 453
    :catch_2
    move-exception v1

    goto :goto_0
.end method
