.class Lcom/yelp/android/ui/activities/talk/ac;
.super Ljava/lang/Object;
.source "TalkViewPost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ac;->c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/talk/ac;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/talk/ac;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ac;->c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->c(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ac;->c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ac;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ac;->c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/ac;->a:Landroid/widget/TextView;

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/TextView;I)V

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ac;->a:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ac;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
