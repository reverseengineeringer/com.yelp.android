.class public Lcom/yelp/android/database/b;
.super Ljava/lang/Object;
.source "AdapterNearbyFilters.java"


# instance fields
.field public a:Lcom/yelp/android/serializable/Filter;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/yelp/android/serializable/Filter;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput p1, p0, Lcom/yelp/android/database/b;->c:I

    .line 272
    iput-object p3, p0, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    .line 273
    iput-object p2, p0, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/yelp/android/database/b;
    .locals 17

    .prologue
    .line 285
    const-string/jumbo v2, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 286
    const-string/jumbo v2, "term"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 287
    const-string/jumbo v2, "filter_exists"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 288
    new-instance v2, Lcom/yelp/android/database/b;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v9, v3}, Lcom/yelp/android/database/b;-><init>(ILjava/lang/String;Lcom/yelp/android/serializable/Filter;)V

    .line 341
    :goto_0
    return-object v2

    .line 291
    :cond_0
    const-class v2, Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 293
    const-string/jumbo v2, "prices"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 294
    sget-object v2, Lcom/yelp/android/serializable/Filter$BusinessState;->$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v4, Lcom/yelp/android/serializable/Filter$BusinessState;->$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v6, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v7, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v2, v4, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 300
    const/4 v2, 0x1

    move v4, v2

    :goto_1
    const/16 v2, 0x9

    if-ge v4, v2, :cond_2

    .line 301
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/Filter$BusinessState;

    .line 302
    and-int v7, v4, v5

    if-lez v7, :cond_1

    .line 303
    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    shl-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 307
    :cond_2
    const-string/jumbo v2, "open"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 308
    sget-object v2, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_3
    const-string/jumbo v2, "radius"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 313
    const-string/jumbo v2, "radius_label"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-static {}, Lcom/yelp/android/serializable/Filter$Sort;->values()[Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v2

    const-string/jumbo v5, "sort_ordinal"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aget-object v6, v2, v5

    .line 319
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 324
    const-string/jumbo v2, "attributes"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_5

    aget-object v13, v5, v2

    .line 325
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 328
    invoke-static {v13}, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->valueOf(Ljava/lang/String;)Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;

    move-result-object v13

    .line 333
    new-instance v14, Lcom/yelp/android/serializable/AttributeFilter;

    iget-object v15, v13, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->mTokenName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    iget v13, v13, Lcom/yelp/android/database/AdapterNearbyFilters$OldAttributeFilter;->mDisplayRes:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v15, v13}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 338
    :cond_5
    new-instance v5, Lcom/yelp/android/serializable/at;

    invoke-direct {v5, v4, v10, v11}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    .line 339
    new-instance v2, Lcom/yelp/android/serializable/Filter;

    const/4 v4, 0x0

    new-instance v7, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v7, v12}, Lcom/yelp/android/serializable/AttributeFilters;-><init>(Ljava/util/List;)V

    invoke-direct/range {v2 .. v7}, Lcom/yelp/android/serializable/Filter;-><init>(Ljava/util/EnumSet;Ljava/util/Calendar;Lcom/yelp/android/serializable/at;Lcom/yelp/android/serializable/Filter$Sort;Lcom/yelp/android/serializable/AttributeFilters;)V

    .line 341
    new-instance v3, Lcom/yelp/android/database/b;

    invoke-direct {v3, v8, v9, v2}, Lcom/yelp/android/database/b;-><init>(ILjava/lang/String;Lcom/yelp/android/serializable/Filter;)V

    move-object v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 410
    if-ne p0, p1, :cond_1

    .line 427
    :cond_0
    :goto_0
    return v0

    .line 412
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 413
    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 415
    goto :goto_0

    .line 416
    :cond_3
    check-cast p1, Lcom/yelp/android/database/b;

    .line 417
    iget-object v2, p0, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    if-nez v2, :cond_4

    .line 418
    iget-object v2, p1, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    if-eqz v2, :cond_5

    move v0, v1

    .line 419
    goto :goto_0

    .line 420
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    iget-object v3, p1, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Filter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 421
    goto :goto_0

    .line 422
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 423
    iget-object v2, p1, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 424
    goto :goto_0

    .line 425
    :cond_6
    iget-object v2, p0, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 426
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 399
    .line 401
    iget-object v0, p0, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 403
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 405
    return v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Filter;->hashCode()I

    move-result v0

    goto :goto_0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
