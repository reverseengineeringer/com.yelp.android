.class public Lcom/yelp/android/ui/util/ag;
.super Ljava/lang/Object;
.source "ImageBlur.java"


# instance fields
.field private final a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/widget/ImageView;",
            ">;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/yelp/android/ui/util/ah;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/ah;-><init>(Lcom/yelp/android/ui/util/ag;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ag;->a:Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 39

    .prologue
    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 102
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ge v0, v3, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 305
    :goto_0
    return-object v2

    .line 106
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 109
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 110
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 112
    add-int/lit8 v24, v5, -0x1

    .line 113
    add-int/lit8 v25, v9, -0x1

    .line 114
    mul-int v4, v5, v9

    .line 115
    add-int v6, p2, p2

    add-int/lit8 v26, v6, 0x1

    .line 117
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 118
    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 119
    new-array v0, v4, [I

    move-object/from16 v29, v0

    .line 121
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v30, v0

    .line 123
    add-int/lit8 v4, v26, 0x1

    shr-int/lit8 v4, v4, 0x1

    .line 124
    mul-int v6, v4, v4

    .line 125
    mul-int/lit16 v4, v6, 0x100

    new-array v0, v4, [I

    move-object/from16 v31, v0

    .line 126
    const/4 v4, 0x0

    :goto_1
    mul-int/lit16 v7, v6, 0x100

    if-ge v4, v7, :cond_1

    .line 127
    div-int v7, v4, v6

    aput v7, v31, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    :cond_1
    const/4 v6, 0x0

    .line 132
    const/4 v4, 0x3

    move/from16 v0, v26

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 137
    add-int/lit8 v32, p2, 0x1

    .line 141
    const/4 v7, 0x0

    move/from16 v22, v6

    move v13, v6

    move/from16 v23, v7

    :goto_2
    move/from16 v0, v23

    if-ge v0, v9, :cond_9

    .line 142
    const/4 v6, 0x0

    .line 143
    move/from16 v0, p2

    neg-int v7, v0

    move v8, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move v14, v7

    move v15, v6

    move/from16 v16, v6

    move/from16 v17, v6

    move v7, v6

    :goto_3
    move/from16 v0, p2

    if-gt v14, v0, :cond_3

    .line 144
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v18, v18, v13

    aget v18, v3, v18

    .line 145
    add-int v19, v14, p2

    aget-object v19, v4, v19

    .line 146
    const/16 v20, 0x0

    const/high16 v21, 0xff0000

    and-int v21, v21, v18

    shr-int/lit8 v21, v21, 0x10

    aput v21, v19, v20

    .line 147
    const/16 v20, 0x1

    const v21, 0xff00

    and-int v21, v21, v18

    shr-int/lit8 v21, v21, 0x8

    aput v21, v19, v20

    .line 148
    const/16 v20, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v19, v20

    .line 149
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v32, v18

    .line 150
    const/16 v20, 0x0

    aget v20, v19, v20

    mul-int v20, v20, v18

    add-int v17, v17, v20

    .line 151
    const/16 v20, 0x1

    aget v20, v19, v20

    mul-int v20, v20, v18

    add-int v16, v16, v20

    .line 152
    const/16 v20, 0x2

    aget v20, v19, v20

    mul-int v18, v18, v20

    add-int v15, v15, v18

    .line 153
    if-lez v14, :cond_2

    .line 154
    const/16 v18, 0x0

    aget v18, v19, v18

    add-int v8, v8, v18

    .line 155
    const/16 v18, 0x1

    aget v18, v19, v18

    add-int v7, v7, v18

    .line 156
    const/16 v18, 0x2

    aget v18, v19, v18

    add-int v6, v6, v18

    .line 143
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 158
    :cond_2
    const/16 v18, 0x0

    aget v18, v19, v18

    add-int v12, v12, v18

    .line 159
    const/16 v18, 0x1

    aget v18, v19, v18

    add-int v11, v11, v18

    .line 160
    const/16 v18, 0x2

    aget v18, v19, v18

    add-int v10, v10, v18

    goto :goto_4

    .line 165
    :cond_3
    const/4 v14, 0x0

    move/from16 v18, v14

    move v14, v11

    move v11, v7

    move/from16 v7, v16

    move/from16 v16, p2

    move/from16 v37, v12

    move v12, v8

    move v8, v15

    move/from16 v15, v37

    move/from16 v38, v6

    move/from16 v6, v17

    move/from16 v17, v13

    move v13, v10

    move/from16 v10, v38

    :goto_5
    move/from16 v0, v18

    if-ge v0, v5, :cond_8

    .line 166
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v6, v0, :cond_4

    .line 167
    move-object/from16 v0, v31

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    .line 169
    :cond_4
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v7, v0, :cond_5

    .line 170
    move-object/from16 v0, v31

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    .line 172
    :cond_5
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_6

    .line 173
    move-object/from16 v0, v31

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    .line 175
    :cond_6
    aget v19, v31, v6

    aput v19, v27, v17

    .line 176
    aget v19, v31, v7

    aput v19, v28, v17

    .line 177
    aget v19, v31, v8

    aput v19, v29, v17

    .line 179
    sub-int/2addr v6, v15

    .line 180
    sub-int/2addr v7, v14

    .line 181
    sub-int/2addr v8, v13

    .line 183
    sub-int v19, v16, p2

    add-int v19, v19, v26

    .line 184
    rem-int v19, v19, v26

    aget-object v19, v4, v19

    .line 186
    const/16 v20, 0x0

    aget v20, v19, v20

    sub-int v15, v15, v20

    .line 187
    const/16 v20, 0x1

    aget v20, v19, v20

    sub-int v14, v14, v20

    .line 188
    const/16 v20, 0x2

    aget v20, v19, v20

    sub-int v33, v13, v20

    .line 190
    if-nez v23, :cond_7

    .line 191
    add-int v13, v18, p2

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v24

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    aput v13, v30, v18

    .line 193
    :cond_7
    aget v13, v30, v18

    add-int v13, v13, v22

    aget v13, v3, v13

    .line 195
    const/16 v20, 0x0

    const/high16 v21, 0xff0000

    and-int v21, v21, v13

    shr-int/lit8 v21, v21, 0x10

    aput v21, v19, v20

    .line 196
    const/16 v20, 0x1

    const v21, 0xff00

    and-int v21, v21, v13

    shr-int/lit8 v21, v21, 0x8

    aput v21, v19, v20

    .line 197
    const/16 v20, 0x2

    and-int/lit16 v13, v13, 0xff

    aput v13, v19, v20

    .line 199
    const/4 v13, 0x0

    aget v13, v19, v13

    add-int v34, v12, v13

    .line 200
    const/4 v12, 0x1

    aget v12, v19, v12

    add-int v35, v11, v12

    .line 201
    const/4 v11, 0x2

    aget v11, v19, v11

    add-int v36, v10, v11

    .line 203
    add-int v21, v6, v34

    .line 204
    add-int v20, v7, v35

    .line 205
    add-int v19, v8, v36

    .line 207
    add-int/lit8 v6, v16, 0x1

    rem-int v13, v6, v26

    .line 208
    rem-int v6, v13, v26

    aget-object v6, v4, v6

    .line 210
    const/4 v7, 0x0

    aget v7, v6, v7

    add-int v12, v15, v7

    .line 211
    const/4 v7, 0x1

    aget v7, v6, v7

    add-int v11, v14, v7

    .line 212
    const/4 v7, 0x2

    aget v7, v6, v7

    add-int v10, v33, v7

    .line 214
    const/4 v7, 0x0

    aget v7, v6, v7

    sub-int v8, v34, v7

    .line 215
    const/4 v7, 0x1

    aget v7, v6, v7

    sub-int v7, v35, v7

    .line 216
    const/4 v14, 0x2

    aget v6, v6, v14

    sub-int v6, v36, v6

    .line 218
    add-int/lit8 v14, v17, 0x1

    .line 165
    add-int/lit8 v15, v18, 0x1

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v18, v15

    move v13, v10

    move v14, v11

    move v15, v12

    move v10, v6

    move v11, v7

    move v12, v8

    move/from16 v8, v19

    move/from16 v7, v20

    move/from16 v6, v21

    goto/16 :goto_5

    .line 220
    :cond_8
    add-int v6, v22, v5

    .line 141
    add-int/lit8 v7, v23, 0x1

    move/from16 v22, v6

    move/from16 v13, v17

    move/from16 v23, v7

    goto/16 :goto_2

    .line 222
    :cond_9
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v5, :cond_f

    .line 223
    const/4 v7, 0x0

    .line 224
    move/from16 v0, p2

    neg-int v6, v0

    mul-int/2addr v6, v5

    .line 225
    move/from16 v0, p2

    neg-int v8, v0

    move v10, v7

    move v11, v7

    move v12, v7

    move v13, v7

    move/from16 v18, v8

    move v14, v7

    move/from16 v16, v7

    move/from16 v17, v7

    move v8, v7

    :goto_7
    move/from16 v0, v18

    move/from16 v1, p2

    if-gt v0, v1, :cond_c

    .line 226
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v20, v19, v15

    .line 228
    add-int v19, v18, p2

    aget-object v21, v4, v19

    .line 230
    const/16 v19, 0x0

    aget v22, v27, v20

    aput v22, v21, v19

    .line 231
    const/16 v19, 0x1

    aget v22, v28, v20

    aput v22, v21, v19

    .line 232
    const/16 v19, 0x2

    aget v22, v29, v20

    aput v22, v21, v19

    .line 234
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v22, v32, v19

    .line 236
    aget v19, v27, v20

    mul-int v19, v19, v22

    add-int v19, v19, v17

    .line 237
    aget v17, v28, v20

    mul-int v17, v17, v22

    add-int v17, v17, v16

    .line 238
    aget v16, v29, v20

    mul-int v16, v16, v22

    add-int v16, v16, v14

    .line 240
    if-lez v18, :cond_b

    .line 241
    const/4 v14, 0x0

    aget v14, v21, v14

    add-int/2addr v10, v14

    .line 242
    const/4 v14, 0x1

    aget v14, v21, v14

    add-int/2addr v8, v14

    .line 243
    const/4 v14, 0x2

    aget v14, v21, v14

    add-int/2addr v7, v14

    .line 250
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 251
    add-int/2addr v6, v5

    .line 225
    :cond_a
    add-int/lit8 v14, v18, 0x1

    move/from16 v18, v14

    move/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v19

    goto :goto_7

    .line 245
    :cond_b
    const/4 v14, 0x0

    aget v14, v21, v14

    add-int/2addr v13, v14

    .line 246
    const/4 v14, 0x1

    aget v14, v21, v14

    add-int/2addr v12, v14

    .line 247
    const/4 v14, 0x2

    aget v14, v21, v14

    add-int/2addr v11, v14

    goto :goto_8

    .line 256
    :cond_c
    const/4 v6, 0x0

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v16, v6

    move/from16 v17, v14

    move v14, v15

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, p2

    :goto_9
    move/from16 v0, v16

    if-ge v0, v9, :cond_e

    .line 258
    const/high16 v20, -0x1000000

    aget v21, v3, v14

    and-int v20, v20, v21

    aget v21, v31, v19

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    aget v21, v31, v18

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v31, v17

    or-int v20, v20, v21

    aput v20, v3, v14

    .line 260
    sub-int v19, v19, v12

    .line 261
    sub-int v18, v18, v11

    .line 262
    sub-int v17, v17, v10

    .line 264
    sub-int v20, v13, p2

    add-int v20, v20, v26

    .line 265
    rem-int v20, v20, v26

    aget-object v20, v4, v20

    .line 267
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v12, v12, v21

    .line 268
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v11, v11, v21

    .line 269
    const/16 v21, 0x2

    aget v21, v20, v21

    sub-int v10, v10, v21

    .line 271
    if-nez v15, :cond_d

    .line 272
    add-int v21, v16, v32

    move/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    mul-int v21, v21, v5

    aput v21, v30, v16

    .line 274
    :cond_d
    aget v21, v30, v16

    add-int v21, v21, v15

    .line 276
    const/16 v22, 0x0

    aget v23, v27, v21

    aput v23, v20, v22

    .line 277
    const/16 v22, 0x1

    aget v23, v28, v21

    aput v23, v20, v22

    .line 278
    const/16 v22, 0x2

    aget v21, v29, v21

    aput v21, v20, v22

    .line 280
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v8, v8, v21

    .line 281
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v7, v7, v21

    .line 282
    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v6, v6, v20

    .line 284
    add-int v19, v19, v8

    .line 285
    add-int v18, v18, v7

    .line 286
    add-int v17, v17, v6

    .line 288
    add-int/lit8 v13, v13, 0x1

    rem-int v13, v13, v26

    .line 289
    aget-object v20, v4, v13

    .line 291
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v12, v12, v21

    .line 292
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v11, v11, v21

    .line 293
    const/16 v21, 0x2

    aget v21, v20, v21

    add-int v10, v10, v21

    .line 295
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v8, v8, v21

    .line 296
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v7, v7, v21

    .line 297
    const/16 v21, 0x2

    aget v20, v20, v21

    sub-int v6, v6, v20

    .line 299
    add-int/2addr v14, v5

    .line 256
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 222
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 303
    :cond_f
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ag;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/ag;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/util/ag;->a:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 25
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/e;->blur_image_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 39
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yelp/android/bf/e;->blur_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 41
    invoke-static {p1, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ag;->a:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    return-void
.end method
