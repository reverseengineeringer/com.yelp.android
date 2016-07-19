.class public Lcom/yelp/android/ui/activities/gallery/a;
.super Landroid/widget/CursorAdapter;
.source "LibraryCursorAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/gallery/a$c;,
        Lcom/yelp/android/ui/activities/gallery/a$b;,
        Lcom/yelp/android/ui/activities/gallery/a$a;,
        Lcom/yelp/android/ui/activities/gallery/a$d;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/yelp/android/ui/activities/gallery/a$a;

.field private final c:Lcom/yelp/android/ui/util/q;

.field private final d:Lcom/yelp/android/ui/util/t;

.field private e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

.field private f:Lcom/yelp/android/ui/activities/gallery/a$b;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/gallery/a$a;Landroid/database/Cursor;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;Lcom/yelp/android/ui/activities/gallery/a$b;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 62
    iput v1, p0, Lcom/yelp/android/ui/activities/gallery/a;->g:I

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Landroid/view/LayoutInflater;

    .line 73
    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/a;->b:Lcom/yelp/android/ui/activities/gallery/a$a;

    .line 74
    new-instance v0, Lcom/yelp/android/ui/util/q;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/q;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->c:Lcom/yelp/android/ui/util/q;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->c:Lcom/yelp/android/ui/util/q;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/q;->a(Z)V

    .line 76
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->d:Lcom/yelp/android/ui/util/t;

    .line 77
    iput-object p4, p0, Lcom/yelp/android/ui/activities/gallery/a;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 78
    iput-object p5, p0, Lcom/yelp/android/ui/activities/gallery/a;->f:Lcom/yelp/android/ui/activities/gallery/a$b;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/gallery/a;)Lcom/yelp/android/ui/util/t;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->d:Lcom/yelp/android/ui/util/t;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 154
    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/a;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/a;->e:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const-string/jumbo v1, "media_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 159
    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/gallery/a;)Lcom/yelp/android/ui/activities/gallery/a$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->b:Lcom/yelp/android/ui/activities/gallery/a$a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/yelp/android/ui/activities/gallery/a;->g:I

    .line 189
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/gallery/a$d;

    .line 103
    const-string/jumbo v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 104
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/gallery/a;->a(Landroid/database/Cursor;)Z

    move-result v5

    .line 106
    if-eqz v5, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 107
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 108
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/a;->c:Lcom/yelp/android/ui/util/q;

    iget-object v6, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->a:Landroid/widget/ImageView;

    new-instance v7, Lcom/yelp/android/ui/activities/gallery/a$1;

    invoke-direct {v7, p0, v4}, Lcom/yelp/android/ui/activities/gallery/a$1;-><init>(Lcom/yelp/android/ui/activities/gallery/a;Landroid/net/Uri;)V

    invoke-virtual {v1, v6, v7}, Lcom/yelp/android/ui/util/q;->a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V

    .line 117
    iget-object v6, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->b:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget v1, p0, Lcom/yelp/android/ui/activities/gallery/a;->g:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 120
    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/gallery/a$2;

    invoke-direct {v1, p0, v4, v5}, Lcom/yelp/android/ui/activities/gallery/a$2;-><init>(Lcom/yelp/android/ui/activities/gallery/a;Landroid/net/Uri;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :goto_2
    return-void

    .line 106
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    move v1, v3

    .line 117
    goto :goto_1

    .line 128
    :cond_2
    iget-object v1, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/a;->f:Lcom/yelp/android/ui/activities/gallery/a$b;

    invoke-interface {v1, v4, v5}, Lcom/yelp/android/ui/activities/gallery/a$b;->a(Landroid/net/Uri;Z)Z

    move-result v1

    .line 130
    iget-object v6, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v2, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->d:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    iget-object v2, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->a:Landroid/widget/ImageView;

    new-instance v3, Lcom/yelp/android/ui/activities/gallery/a$c;

    iget-object v1, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/yelp/android/ui/activities/gallery/a$c;-><init>(Lcom/yelp/android/ui/activities/gallery/a;Landroid/view/View;Landroid/net/Uri;Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->d:Landroid/widget/CheckBox;

    new-instance v2, Lcom/yelp/android/ui/activities/gallery/a$c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/a$d;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, p0, v0, v4, v5}, Lcom/yelp/android/ui/activities/gallery/a$c;-><init>(Lcom/yelp/android/ui/activities/gallery/a;Landroid/view/View;Landroid/net/Uri;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    move v3, v2

    .line 130
    goto :goto_3
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/gallery/a;->changeCursor(Landroid/database/Cursor;)V

    .line 150
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0301f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/yelp/android/ui/activities/gallery/a$d;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/gallery/a$d;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    check-cast p3, Landroid/widget/GridView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/a;->c:Lcom/yelp/android/ui/util/q;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/q;->a()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/a;->c:Lcom/yelp/android/ui/util/q;

    invoke-virtual {v2, v1, v1}, Lcom/yelp/android/ui/util/q;->a(II)V

    .line 96
    :cond_0
    return-object v0
.end method
