.class Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;
.super Ljava/lang/Object;
.source "TalkViewPost.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/widget/TextView;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Lcom/yelp/android/ui/activities/talk/TalkViewPost;Z)Z

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->c:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->d(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TalkTopic;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$6;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 330
    return-void
.end method
