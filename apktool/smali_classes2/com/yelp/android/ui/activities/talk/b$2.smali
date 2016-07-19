.class Lcom/yelp/android/ui/activities/talk/b$2;
.super Ljava/lang/Object;
.source "TalkMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/talk/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/yelp/android/ui/activities/talk/b$a;

.field final synthetic e:Lcom/yelp/android/ui/activities/talk/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/b;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/yelp/android/ui/activities/talk/b$a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b$2;->e:Lcom/yelp/android/ui/activities/talk/b;

    iput p2, p0, Lcom/yelp/android/ui/activities/talk/b$2;->a:I

    iput-object p3, p0, Lcom/yelp/android/ui/activities/talk/b$2;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/talk/b$2;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/yelp/android/ui/activities/talk/b$2;->d:Lcom/yelp/android/ui/activities/talk/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$2;->e:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/b;->c(Lcom/yelp/android/ui/activities/talk/b;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/b$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$2;->e:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/b;->c(Lcom/yelp/android/ui/activities/talk/b;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/b$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$2;->e:Lcom/yelp/android/ui/activities/talk/b;

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/b$2;->a:I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/b$2;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/b$2;->c:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/talk/b$2;->d:Lcom/yelp/android/ui/activities/talk/b$a;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/talk/b$a;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/ui/activities/talk/b;ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$2;->d:Lcom/yelp/android/ui/activities/talk/b$a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/talk/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 148
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$2;->e:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/b;->c(Lcom/yelp/android/ui/activities/talk/b;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/b$2;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
