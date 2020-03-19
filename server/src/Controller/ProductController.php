<?php

namespace App\Controller;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\BrowserKit\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Serializer\SerializerInterface;

class ProductController extends AbstractController
{

    /**
     * @Route("/product", name="product_index", methods={"GET"})
     */
    public function index(ProductRepository $productRepository)
    {
        $products = $productRepository->findAll();
        return $this->json($products, 200, [], ['groups' => 'product:show']);
    }

    /**
     * @Route("/product/home", name="home_index", methods={"GET"})
     */
    public function showLastProduct(ProductRepository $productRepository)
    {
        $products = $productRepository->findLastProduct();
        return $this->json($products, 200, [], ['groups' => 'product:show']);
    }

    /**
     * @Route("/product/resume/{id}", name="product_resume", methods={"GET"})
     */
    public function resumeProduct(ProductRepository $productRepository, Product $product)
    {
        $products = $productRepository->findBy(['id' => $product->getId()]);
        return $this->json($products, 200, [], ['groups' => 'product:show']);
    }

    /**
     * @Route("/product/create", name="product", methods={"POST"})
     */
    public function createProduct(Request $request,
                                  SerializerInterface $serializer)
    {
        $data = $request->getContent();
        $product = $serializer->deserialize($data,'App\Entity\Product', 'json');

        $em = $this->getDoctrine()->getManager();
        $em->persist($product);
        $em->flush();

        return new Response('', Response::HTTP_CREATED);

    }
}
