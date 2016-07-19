.class final Lcom/yelp/android/h/l$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompatKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/h/l;->a(Lcom/yelp/android/h/l$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/h/l$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/h/l$a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yelp/android/h/l$1;->a:Lcom/yelp/android/h/l$a;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/h/l$1;->a:Lcom/yelp/android/h/l$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/h/l$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/h/l$1;->a:Lcom/yelp/android/h/l$a;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/h/l$a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/h/l$1;->a:Lcom/yelp/android/h/l$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/h/l$a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/h/l$1;->a:Lcom/yelp/android/h/l$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/yelp/android/h/l$a;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
