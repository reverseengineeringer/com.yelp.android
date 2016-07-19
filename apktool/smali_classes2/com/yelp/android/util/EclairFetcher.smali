.class Lcom/yelp/android/util/EclairFetcher;
.super Lcom/yelp/android/util/ContactsFetcher;
.source "EclairFetcher.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x7
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/EclairFetcher$EclairContact;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/util/ContactsFetcher;-><init>()V

    .line 227
    return-void
.end method

.method static synthetic a(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/yelp/android/util/EclairFetcher;->c(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 31
    invoke-static {p0}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    return-void
.end method

.method private static final c(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 348
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final d(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 352
    if-eqz p0, :cond_0

    .line 353
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 120
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Lcom/yelp/android/util/ContactsFetcher$Contact;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/yelp/android/util/EclairFetcher$EclairContact;

    invoke-direct {v1, v0}, Lcom/yelp/android/util/EclairFetcher$EclairContact;-><init>(Landroid/net/Uri;)V

    return-object v1
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "contact_id"

    aput-object v3, v2, v6

    const-string/jumbo v3, "data1"

    aput-object v3, v2, v7

    const-string/jumbo v3, "data1=?"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :try_start_0
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->c(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    const-string/jumbo v2, "contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    .line 84
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "mimetype"

    aput-object v4, v2, v6

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v7

    const-string/jumbo v4, "data2"

    aput-object v4, v2, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND contact_id in ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 99
    :try_start_1
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string/jumbo v0, "data2"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    const-string/jumbo v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 102
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 104
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 105
    if-ne v3, v8, :cond_2

    .line 111
    :cond_1
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    .line 113
    return-object v5

    .line 102
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 111
    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    throw v0
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 37
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "contact_id"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v5, "data1"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "data2"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "data3"

    aput-object v5, v2, v3

    const-string/jumbo v3, "mimetype=\'vnd.android.cursor.item/email_v2\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 47
    :try_start_0
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const-string/jumbo v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 50
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    throw v0

    :cond_0
    move-object v0, v6

    :cond_1
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    .line 58
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 135
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "null limit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 150
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->c(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const-string/jumbo v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 154
    const-string/jumbo v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 156
    :cond_0
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 157
    new-instance v6, Lcom/yelp/android/util/EclairFetcher$EclairContact;

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/yelp/android/util/EclairFetcher$EclairContact;-><init>(Landroid/net/Uri;)V

    .line 162
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/yelp/android/util/EclairFetcher$EclairContact;->a:Ljava/lang/String;

    .line 163
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 166
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    .line 169
    :goto_0
    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    move-object v0, v6

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 174
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    const-string/jumbo v1, ","

    new-instance v2, Lcom/yelp/android/util/EclairFetcher$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/util/EclairFetcher$1;-><init>(Lcom/yelp/android/util/EclairFetcher;)V

    invoke-static {v1, p2, v2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v3

    .line 189
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v5, "contact_id"

    aput-object v5, v2, v8

    const-string/jumbo v5, "data1"

    aput-object v5, v2, v9

    const-string/jumbo v5, "%s=\'%s\' AND %s IN (%s)"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "mimetype"

    aput-object v7, v6, v8

    const-string/jumbo v7, "vnd.android.cursor.item/email_v2"

    aput-object v7, v6, v9

    const-string/jumbo v7, "data1"

    aput-object v7, v6, v10

    const/4 v7, 0x3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 206
    :try_start_0
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->c(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    const-string/jumbo v2, "contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 209
    const-string/jumbo v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 211
    :cond_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 212
    new-instance v6, Lcom/yelp/android/util/EclairFetcher$EclairContact;

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/yelp/android/util/EclairFetcher$EclairContact;-><init>(Landroid/net/Uri;)V

    .line 217
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/yelp/android/util/EclairFetcher$EclairContact;->b:Ljava/lang/String;

    .line 218
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 222
    :cond_2
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->d(Landroid/database/Cursor;)V

    throw v0
.end method
