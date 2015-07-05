.class public Lcom/yelp/android/ui/activities/gallery/k;
.super Landroid/widget/CursorAdapter;
.source "LibraryCursorAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/j;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/yelp/android/ui/activities/gallery/n;

.field private final c:Lcom/yelp/android/ui/util/z;

.field private final d:Lcom/bumptech/glide/j;

.field private e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/gallery/n;Landroid/database/Cursor;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;)V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/k;->a:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/k;->b:Lcom/yelp/android/ui/activities/gallery/n;

    .line 69
    new-instance v0, Lcom/yelp/android/ui/util/z;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/z;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/k;->c:Lcom/yelp/android/ui/util/z;

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/k;->c:Lcom/yelp/android/ui/util/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/z;->a(Z)V

    .line 71
    invoke-static {p1}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/k;->d:Lcom/bumptech/glide/j;

    .line 72
    iput-object p4, p0, Lcom/yelp/android/ui/activities/gallery/k;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/k;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/k;->d:Lcom/bumptech/glide/j;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 133
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/k;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/k;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 142
    :cond_2
    const-string/jumbo v1, "media_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 143
    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/gallery/k;)Lcom/yelp/android/ui/activities/gallery/n;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/k;->b:Lcom/yelp/android/ui/activities/gallery/n;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/gallery/o;

    .line 99
    const-string/jumbo v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 100
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/gallery/k;->a(Landroid/database/Cursor;)Z

    move-result v3

    .line 102
    if-eqz v3, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 103
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 104
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/k;->c:Lcom/yelp/android/ui/util/z;

    iget-object v4, v0, Lcom/yelp/android/ui/activities/gallery/o;->a:Landroid/widget/ImageView;

    new-instance v5, Lcom/yelp/android/ui/activities/gallery/l;

    invoke-direct {v5, p0, v2}, Lcom/yelp/android/ui/activities/gallery/l;-><init>(Lcom/yelp/android/ui/activities/gallery/k;Landroid/net/Uri;)V

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/util/z;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V

    .line 114
    iget-object v4, v0, Lcom/yelp/android/ui/activities/gallery/o;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/o;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/gallery/m;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/gallery/m;-><init>(Lcom/yelp/android/ui/activities/gallery/k;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void

    .line 102
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/k;->changeCursor(Landroid/database/Cursor;)V

    .line 127
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/k;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03017c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/yelp/android/ui/activities/gallery/o;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/gallery/o;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/k;->c:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/z;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    check-cast p3, Landroid/widget/GridView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/k;->c:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v2, v1, v1}, Lcom/yelp/android/ui/util/z;->a(II)V

    .line 92
    :cond_0
    return-object v0
.end method
