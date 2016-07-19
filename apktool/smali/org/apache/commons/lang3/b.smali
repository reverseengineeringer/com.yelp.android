.class public Lorg/apache/commons/lang3/b;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static a(CI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5236
    new-array v1, p1, [C

    .line 5237
    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5238
    aput-char p0, v1, v0

    .line 5237
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5240
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4153
    if-nez p0, :cond_0

    .line 4154
    const/4 v0, 0x0

    .line 4156
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/b;->a(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 5148
    if-nez p0, :cond_1

    .line 5149
    const/4 p0, 0x0

    .line 5180
    :cond_0
    :goto_0
    return-object p0

    .line 5151
    :cond_1
    if-gtz p1, :cond_2

    .line 5152
    const-string/jumbo p0, ""

    goto :goto_0

    .line 5154
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5155
    if-eq p1, v3, :cond_0

    if-eqz v1, :cond_0

    .line 5158
    if-ne v1, v3, :cond_3

    const/16 v2, 0x2000

    if-gt p1, v2, :cond_3

    .line 5159
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/b;->a(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5162
    :cond_3
    mul-int v2, v1, p1

    .line 5163
    packed-switch v1, :pswitch_data_0

    .line 5176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5177
    :goto_1
    if-ge v0, p1, :cond_5

    .line 5178
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5165
    :pswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/b;->a(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5167
    :pswitch_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5168
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 5169
    new-array v2, v2, [C

    .line 5170
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x2

    :goto_2
    if-ltz v0, :cond_4

    .line 5171
    aput-char v1, v2, v0

    .line 5172
    add-int/lit8 v4, v0, 0x1

    aput-char v3, v2, v4

    .line 5170
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 5174
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 5180
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2

    .prologue
    .line 5400
    if-nez p0, :cond_1

    .line 5401
    const/4 p0, 0x0

    .line 5410
    :cond_0
    :goto_0
    return-object p0

    .line 5403
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 5404
    if-lez v0, :cond_0

    .line 5407
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 5408
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5410
    :cond_2
    invoke-static {p2, v0}, Lorg/apache/commons/lang3/b;->a(CI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 5437
    if-nez p0, :cond_1

    .line 5438
    const/4 p0, 0x0

    .line 5463
    :cond_0
    :goto_0
    return-object p0

    .line 5440
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5441
    const-string/jumbo p2, " "

    .line 5443
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 5444
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5445
    sub-int v2, p1, v2

    .line 5446
    if-lez v2, :cond_0

    .line 5449
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 v3, 0x2000

    if-gt v2, v3, :cond_3

    .line 5450
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5453
    :cond_3
    if-ne v2, v1, :cond_4

    .line 5454
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5455
    :cond_4
    if-ge v2, v1, :cond_5

    .line 5456
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 5458
    :cond_5
    new-array v3, v2, [C

    .line 5459
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5460
    :goto_1
    if-ge v0, v2, :cond_6

    .line 5461
    rem-int v5, v0, v1

    aget-char v5, v4, v5

    aput-char v5, v3, v0

    .line 5460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5463
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 4060
    if-nez p0, :cond_0

    .line 4061
    const/4 v0, 0x0

    .line 4088
    :goto_0
    return-object v0

    .line 4063
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4064
    const-string/jumbo v0, ""

    goto :goto_0

    .line 4066
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4067
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4070
    invoke-static {v0}, Lorg/apache/commons/lang3/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4075
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4076
    if-eqz v0, :cond_3

    .line 4077
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4080
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4081
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4082
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4083
    if-eqz v0, :cond_3

    .line 4084
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4088
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 209
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 785
    if-ne p0, p1, :cond_1

    .line 786
    const/4 v1, 0x1

    .line 794
    :cond_0
    :goto_0
    return v1

    .line 788
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 791
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 792
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 794
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang3/a;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6094
    invoke-static {p0}, Lorg/apache/commons/lang3/b;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6103
    :cond_0
    :goto_0
    return v0

    .line 6097
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 6098
    :goto_1
    if-ge v1, v2, :cond_2

    .line 6099
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6098
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6103
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
