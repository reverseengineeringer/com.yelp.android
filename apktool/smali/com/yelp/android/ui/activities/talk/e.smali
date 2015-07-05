.class Lcom/yelp/android/ui/activities/talk/e;
.super Ljava/lang/Object;
.source "ActivityTalkPost.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/e;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/e;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->b(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/e;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method
