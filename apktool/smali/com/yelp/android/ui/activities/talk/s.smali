.class Lcom/yelp/android/ui/activities/talk/s;
.super Ljava/lang/Object;
.source "TalkMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/yelp/android/ui/activities/talk/u;

.field final synthetic e:Lcom/yelp/android/ui/activities/talk/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/q;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/yelp/android/ui/activities/talk/u;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/s;->e:Lcom/yelp/android/ui/activities/talk/q;

    iput p2, p0, Lcom/yelp/android/ui/activities/talk/s;->a:I

    iput-object p3, p0, Lcom/yelp/android/ui/activities/talk/s;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/talk/s;->c:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/yelp/android/ui/activities/talk/s;->d:Lcom/yelp/android/ui/activities/talk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/s;->e:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->c(Lcom/yelp/android/ui/activities/talk/q;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/s;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/s;->e:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->c(Lcom/yelp/android/ui/activities/talk/q;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/s;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/s;->e:Lcom/yelp/android/ui/activities/talk/q;

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/s;->a:I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/s;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/s;->c:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/talk/s;->d:Lcom/yelp/android/ui/activities/talk/u;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/talk/u;->b:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/ui/activities/talk/q;ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/s;->d:Lcom/yelp/android/ui/activities/talk/u;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/talk/u;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 142
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/s;->e:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->c(Lcom/yelp/android/ui/activities/talk/q;)Ljava/util/Set;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/s;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
