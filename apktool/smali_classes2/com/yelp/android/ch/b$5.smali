.class Lcom/yelp/android/ch/b$5;
.super Ljava/lang/Object;
.source "FeedPhotoViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ch/b;->a(Landroid/view/View$OnClickListener;Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnClickListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/yelp/android/ch/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/yelp/android/ch/b$5;->e:Lcom/yelp/android/ch/b;

    iput-object p2, p0, Lcom/yelp/android/ch/b$5;->a:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/yelp/android/ch/b$5;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/yelp/android/ch/b$5;->c:Ljava/lang/String;

    iput p5, p0, Lcom/yelp/android/ch/b$5;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yelp/android/ch/b$5;->e:Lcom/yelp/android/ch/b;

    iget-object v1, p0, Lcom/yelp/android/ch/b$5;->a:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/yelp/android/ch/b$5;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/yelp/android/ch/b$5;->c:Ljava/lang/String;

    iget v5, p0, Lcom/yelp/android/ch/b$5;->d:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;I)V

    .line 280
    return-void
.end method
