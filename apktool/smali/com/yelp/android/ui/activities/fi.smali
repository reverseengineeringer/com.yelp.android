.class public Lcom/yelp/android/ui/activities/fi;
.super Landroid/app/Dialog;
.source "FeedbackFormDialog.java"


# instance fields
.field private final a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/yelp/android/appdata/ap;Landroid/app/PendingIntent;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const v0, 0x7f070525

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/fi;->setTitle(I)V

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/fi;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/fi;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/fi;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/view/Window;->setLayout(II)V

    .line 39
    const v0, 0x7f0c0255

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/fi;->a:Landroid/widget/EditText;

    .line 40
    const v0, 0x7f0c00aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/fj;

    invoke-direct {v1, p0, p3, p4}, Lcom/yelp/android/ui/activities/fj;-><init>(Lcom/yelp/android/ui/activities/fi;Lcom/yelp/android/appdata/ap;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/appdata/ap;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0f0159

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/yelp/android/ui/activities/fi;-><init>(Landroid/content/Context;ILcom/yelp/android/appdata/ap;Landroid/app/PendingIntent;)V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/fi;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fi;->a:Landroid/widget/EditText;

    return-object v0
.end method
