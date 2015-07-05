.class public Lcom/yelp/android/services/o;
.super Ljava/lang/Object;
.source "SharingUtilities.java"


# static fields
.field private static final a:[Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Landroid/content/pm/ActivityInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 182
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    const-string/jumbo v2, "^com\\.twitter\\.android$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "^com\\.hootsuite\\.droid.*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "^com\\.seesmic$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "^com\\.swift_app\\.app$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "^jp\\.r246\\.twicca$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "^com\\.handmark\\.tweetcaster.*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "^com\\.twidro(i|y)d.*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "^com\\.thedeck\\.android\\.app$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "^.*(tweet)|(twitter).*$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/services/o;->a:[Ljava/util/regex/Pattern;

    .line 208
    const-string/jumbo v0, ".*((mms)|(sms)|(messaging)).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/o;->b:Ljava/util/regex/Pattern;

    .line 214
    const-string/jumbo v0, ".*(mail).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/services/o;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    .line 228
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v1, "com.facebook.katana.ShareLinkActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public b()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.twitter.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 265
    sget-object v2, Lcom/yelp/android/services/o;->a:[Ljava/util/regex/Pattern;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 266
    iget-object v5, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    const/4 v0, 0x1

    .line 270
    :cond_0
    return v0

    .line 265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 279
    sget-object v0, Lcom/yelp/android/services/o;->b:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/yelp/android/services/o;->c:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/yelp/android/services/o;->d:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/services/o;->b()Z

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
