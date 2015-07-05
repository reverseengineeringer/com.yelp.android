.class final Lcom/yelp/android/util/EclairFetcher$EclairContact;
.super Lcom/yelp/android/util/ContactsFetcher$Contact;
.source "EclairFetcher.java"


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
.field mLookupUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/yelp/android/util/j;

    invoke-direct {v0}, Lcom/yelp/android/util/j;-><init>()V

    sput-object v0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/yelp/android/util/ContactsFetcher$Contact;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->mLookupUri:Landroid/net/Uri;

    .line 207
    return-void
.end method

.method private getLookupUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->mLookupUri:Landroid/net/Uri;

    .line 270
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->mLookupUri:Landroid/net/Uri;

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 273
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 274
    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 276
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public loadEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "data"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->getLookupUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 213
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

    .line 218
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :try_start_0
    const-string/jumbo v0, "data1"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 221
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 223
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    .line 226
    :cond_0
    return-object v4

    .line 223
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    throw v0
.end method

.method public loadName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->getLookupUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

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

    .line 236
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    const-string/jumbo v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 239
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 241
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    .line 244
    :cond_0
    return-object v3

    .line 241
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    throw v0
.end method

.method public loadPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "photo"

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/util/EclairFetcher$EclairContact;->getLookupUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "data15"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 256
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :try_start_0
    const-string/jumbo v0, "data15"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 259
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 260
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 262
    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    .line 265
    :cond_0
    return-object v3

    .line 262
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/yelp/android/util/EclairFetcher;->b(Landroid/database/Cursor;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/yelp/android/util/EclairFetcher$EclairContact;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 287
    invoke-super {p0, p1, p2}, Lcom/yelp/android/util/ContactsFetcher$Contact;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    return-void
.end method
