.class Lcom/yelp/android/ui/activities/compliments/a$a;
.super Ljava/lang/Object;
.source "ComplimentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/compliments/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/compliments/a;

.field private final b:Lcom/yelp/android/ui/activities/compliments/Mode;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/compliments/a;Lcom/yelp/android/ui/activities/compliments/Mode;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/a$a;->a:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/a$a;->b:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 208
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 212
    check-cast p1, Landroid/widget/Button;

    .line 213
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 215
    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentState;->PENDING:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Compliment;->a(Lcom/yelp/android/serializable/Compliment$ComplimentState;)V

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/a$a;->b:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->l()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/compliments/Mode;->getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/a$a;->b:Lcom/yelp/android/ui/activities/compliments/Mode;

    new-instance v2, Lcom/yelp/android/ui/activities/compliments/a$c;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/a$a;->a:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/compliments/a;->a(Lcom/yelp/android/ui/activities/compliments/a;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/compliments/a$a;->b:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-direct {v2, v3, v0, p1, v4}, Lcom/yelp/android/ui/activities/compliments/a$c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;Landroid/widget/Button;Lcom/yelp/android/ui/activities/compliments/Mode;)V

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/compliments/Mode;->makeActionRequest(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/Compliment;)Lcom/yelp/android/appdata/webrequests/as;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/as;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 223
    return-void
.end method
