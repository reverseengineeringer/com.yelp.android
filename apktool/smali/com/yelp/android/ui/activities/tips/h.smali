.class Lcom/yelp/android/ui/activities/tips/h;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/h;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/h;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/h;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->openContextMenu(Landroid/view/View;)V

    .line 127
    return-void
.end method
