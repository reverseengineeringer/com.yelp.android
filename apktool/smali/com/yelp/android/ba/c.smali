.class Lcom/yelp/android/ba/c;
.super Ljava/lang/Object;
.source "FeedBusinessPhotoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/yelp/android/ba/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ba/a;Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yelp/android/ba/c;->f:Lcom/yelp/android/ba/a;

    iput-object p2, p0, Lcom/yelp/android/ba/c;->a:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/yelp/android/ba/c;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/yelp/android/ba/c;->c:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    iput-object p5, p0, Lcom/yelp/android/ba/c;->d:Ljava/lang/String;

    iput p6, p0, Lcom/yelp/android/ba/c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/ba/c;->f:Lcom/yelp/android/ba/a;

    iget-object v1, p0, Lcom/yelp/android/ba/c;->a:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/yelp/android/ba/c;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/yelp/android/ba/c;->c:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    iget-object v5, p0, Lcom/yelp/android/ba/c;->d:Ljava/lang/String;

    iget v6, p0, Lcom/yelp/android/ba/c;->e:I

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ba/a;->a(Lcom/yelp/android/ba/a;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)V

    .line 151
    return-void
.end method
