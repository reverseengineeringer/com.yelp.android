.class public final Lcom/yelp/android/cz/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/cz/a$a;
    }
.end annotation


# direct methods
.method public static final a(Landroid/net/Uri;)Lcom/yelp/android/cz/a$a;
    .locals 14

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v0

    move-object v2, v5

    move v4, v3

    move-object v0, v5

    :goto_0
    if-ge v6, v8, :cond_3

    :try_start_1
    aget-object v1, v7, v6

    const-string/jumbo v9, "="

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v12, v9, 0x1

    if-gt v11, v12, :cond_0

    move-object v1, v5

    :goto_1
    const-string/jumbo v9, "status"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result v9

    if-eqz v9, :cond_1

    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    move-object v13, v2

    move v2, v1

    move-object v1, v13

    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    move-object v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v9, v9, 0x1

    :try_start_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v2

    move v2, v3

    goto :goto_2

    :cond_1
    const-string/jumbo v9, "otpId"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v0, v1

    move-object v1, v2

    move v2, v4

    goto :goto_2

    :cond_2
    const-string/jumbo v9, "requestToken"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v9

    if-eqz v9, :cond_4

    move v2, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v5

    move-object v2, v5

    move v4, v3

    :goto_3
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    move v4, v3

    :cond_3
    new-instance v1, Lcom/yelp/android/cz/a$a;

    invoke-direct {v1, v4, v2, v0}, Lcom/yelp/android/cz/a$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_2
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v1, v2

    move v2, v4

    goto :goto_2
.end method
