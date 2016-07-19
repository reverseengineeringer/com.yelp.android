.class final Lcom/yelp/android/util/EclairFetcher$EclairContact;
.super Lcom/yelp/android/util/ContactsFetcher$Contact;
.source "EclairFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/EclairFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EclairContact"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/util/EclairFetcher$EclairContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/yelp/android/util/EclairFetcher$EclairContact$1;

    invoke-direct {v0}, Lcom/yelp/android/util/EclairFetcher$EclairContact$1;-><init>()V

    sput-object v0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/yelp/android/util/ContactsFetcher$Contact;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->d:Landroid/net/Uri;

    .line 233
    return-void
.end method

.method private a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->d:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->d:Landroid/net/Uri;

    .line 309
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->d:Landroid/net/Uri;

    .line 310
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->d:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 312
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 313
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 315
    :cond_0
    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 272
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    const-string/jumbo v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 275
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 277
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    .line 280
    :cond_0
    return-object v3

    .line 277
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    throw v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    const-string/jumbo v1, "data"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 239
    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v3, "data1"

    aput-object v3, v2, v7

    const-string/jumbo v3, "%s=\'%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "mimetype"

    aput-object v6, v5, v7

    const-string/jumbo v6, "vnd.android.cursor.item/email_v2"

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    const-string/jumbo v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 253
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 255
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    .line 258
    :cond_0
    return-object v4

    .line 255
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 285
    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    const-string/jumbo v1, "photo"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "data15"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    const-string/jumbo v0, "data15"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 298
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 299
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 301
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    .line 304
    :cond_0
    return-object v3

    .line 301
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 326
    invoke-super {p0, p1, p2}, Lcom/yelp/android/util/ContactsFetcher$Contact;->writeToParcel(Landroid/os/Parcel;I)V

    .line 327
    return-void
.end method
